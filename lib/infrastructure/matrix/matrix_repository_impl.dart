import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/matrix/entities/matrix.dart';
import '../../domain/matrix/matrix_failure.dart';
import '../../domain/matrix/matrix_repository.dart';
import '../../shared/logger.dart';
import '../core/status_code.dart';
import 'data_sources/matrix_local_data_source.dart';
import 'data_sources/matrix_remote_data_source.dart';
import 'dtos/matrix_dto.dart';

@LazySingleton(as: MatrixRepository)
class MatrixRepositoryImpl implements MatrixRepository {
  const MatrixRepositoryImpl(
    this._localDataSource,
    this._remoteDataSource,
  );

  final MatrixLocalDataSource _localDataSource;
  final MatrixRemoteDataSource _remoteDataSource;

  @override
  Future<Either<MatrixFailure, Unit>> fetchAndSave() async {
    return _execute(() async {
      final dtos = await _remoteDataSource.fetchMatrix();
      await _localDataSource.save(dtos);
      return unit;
    });
  }

  @override
  Future<Either<MatrixFailure, KtList<Matrix>>> loadByStage(String id) async {
    try {
      final dtos = await _localDataSource.loadByStage(id);
      return right(dtos.map((dto) => dto.toDomain()).toImmutableList());
    } catch (e) {
      logger.e(e.toString(), e);
      return left(const MatrixFailure.unexpectedError());
    }
  }

  @override
  Future<Either<MatrixFailure, KtList<Matrix>>> loadByItem(String id) async {
    try {
      final dtos = await _localDataSource.loadByItem(id);
      return right(dtos.map((dto) => dto.toDomain()).toImmutableList());
    } catch (e) {
      logger.e(e.toString(), e);
      return left(const MatrixFailure.unexpectedError());
    }
  }

  //* Helper Methods

  Future<Either<MatrixFailure, T>> _execute<T>(
    Future<T> Function() execution,
  ) async {
    try {
      return right(await execution());
    } on DioError catch (e) {
      return left(MatrixFailure.remoteServerError(
        code: e.response?.statusCode ?? internalServerError,
        description: e.message,
      ));
    } catch (e) {
      logger.e(e.toString(), e);
      return left(const MatrixFailure.unexpectedError());
    }
  }
}
