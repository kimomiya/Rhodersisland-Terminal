import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import '../../core/dtos/drop_info_dto.dart';
import '../../core/dtos/existence_dto.dart';
import '../dtos/stage_dto.dart';

const _tableName = StageDto.tableName;

abstract class StageLocalDataSource {
  Future<void> saveAll(List<StageDto> matrix);

  Future<List<StageDto>> loadAll();
}

@LazySingleton(as: StageLocalDataSource)
class StageLocalDataSourceImpl implements StageLocalDataSource {
  const StageLocalDataSourceImpl(
    this._db,
  );

  final Database _db;

  @override
  Future<void> saveAll(List<StageDto> stages) async {
    final batch = _db.batch();

    for (final stage in stages) {
      batch.execute(
        '''
        REPLACE INTO $_tableName (
          stageId, zoneId, code, stageType, apCost,
          dropInfos, existence, minClearTime, code_i18n
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''',
        <dynamic>[
          stage.stageId,
          stage.zoneId,
          stage.code,
          stage.stageType,
          stage.apCost,
          _transferDropInfos(stage.dropInfos),
          _transferExistence(stage.existence),
          stage.minClearTime,
          jsonEncode(stage.codeI18n),
        ],
      );
    }

    await batch.commit(noResult: true);
  }

  @override
  Future<List<StageDto>> loadAll() async {
    final results = await _db.query(_tableName);
    final dtos = <StageDto>[];
    for (final data in results) {
      dtos.add(StageDto.fromJson(data));
    }
    return dtos;
  }

  //* Helper Methods

  String _transferExistence(Map<String, ExistenceDto>? existence) {
    final map = <String, dynamic>{};
    existence?.forEach((key, value) => map[key] = value.toJson());
    return jsonEncode(map);
  }

  String _transferDropInfos(List<DropInfoDto>? dropInfos) {
    final list = dropInfos?.map((info) => info.toJson()).toList() ?? [];
    return jsonEncode(list);
  }
}
