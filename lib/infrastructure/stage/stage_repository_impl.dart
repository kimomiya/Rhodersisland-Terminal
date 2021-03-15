import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/stage/entities/stage.dart';
import '../../domain/stage/stage_failure.dart';
import '../../domain/stage/stage_repository.dart';
import '../../shared/logger.dart';
import '../core/status_code.dart';
import 'data_sources/stage_local_data_source.dart';
import 'data_sources/stage_remote_data_source.dart';
import 'dtos/stage_dto.dart';

@LazySingleton(as: StageRepository)
class StageRepositoryImpl implements StageRepository {
  const StageRepositoryImpl(
    this._localDataSource,
    this._remoteDataSource,
  );

  final StageLocalDataSource _localDataSource;
  final StageRemoteDataSource _remoteDataSource;

  @override
  Future<Either<StageFailure, Unit>> fetchAndSaveAll() async {
    return _execute(() async {
      final dtos = await _remoteDataSource.fetchStages();
      await _localDataSource.saveAll(dtos);
      return unit;
    });
  }

  @override
  Future<Either<StageFailure, KtList<Stage>>> loadAll() async {
    try {
      final dtos = await _localDataSource.loadAll();
      return right(dtos.map((dto) => dto.toDomain()).toImmutableList());
    } catch (e) {
      logger.e(e.toString(), e);
      return left(const StageFailure.unexpectedError());
    }
  }

  //* Helper Methods

  Future<Either<StageFailure, T>> _execute<T>(
    Future<T> Function() execution,
  ) async {
    try {
      return right(await execution());
    } on DioError catch (e) {
      return left(StageFailure.remoteServerError(
        code: e.response?.statusCode ?? internalServerError,
        description: e.message,
      ));
    } catch (e) {
      logger.e(e.toString(), e);
      return left(const StageFailure.unexpectedError());
    }
  }
}
