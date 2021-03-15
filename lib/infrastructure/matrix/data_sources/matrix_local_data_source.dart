import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import '../../stage/dtos/stage_dto.dart';
import '../dtos/matrix_dto.dart';

const _tableName = MatrixDto.tableName;

abstract class MatrixLocalDataSource {
  Future<void> saveAll(List<MatrixDto> matrix);

  Future<List<MatrixDto>> loadByStage(String id);

  Future<List<MatrixDto>> loadByItem(String id);
}

@LazySingleton(as: MatrixLocalDataSource)
class MatrixLocalDataSourceImpl implements MatrixLocalDataSource {
  const MatrixLocalDataSourceImpl(
    this._db,
  );

  final Database _db;

  @override
  Future<void> saveAll(List<MatrixDto> matrix) async {
    final batch = _db.batch();

    for (final m in matrix) {
      batch.execute(
        '''
        REPLACE INTO $_tableName (
          stageId, itemId, quantity, times, start, end
        ) VALUES (?, ?, ?, ?, ?, ?)
        ''',
        <dynamic>[
          m.stageId,
          m.itemId,
          m.quantity,
          m.times,
          m.start,
          m.end,
        ],
      );
    }

    await batch.commit(noResult: true);
  }

  @override
  Future<List<MatrixDto>> loadByStage(String id) async {
    final results = await _db.query(
      _tableName,
      where: 'stageId=?',
      whereArgs: [id],
    );

    final dtos = <MatrixDto>[];
    for (final data in results) {
      dtos.add(MatrixDto.fromJson(data));
    }
    return dtos;
  }

  @override
  Future<List<MatrixDto>> loadByItem(String id) async {
    final results = await _db.rawQuery(
      '''
    SELECT *
    FROM $_tableName as m
    LEFT JOIN ${StageDto.tableName} as s ON m.stageId = s.stageId
    WHERE m.itemId = $id;
    ''',
    );

    final dtos = <MatrixDto>[];
    for (final data in results) {
      dtos.add(MatrixDto.fromQueryResult(data));
    }
    return dtos;
  }
}
