import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/failure/app_failure.dart';
import '../../core/shared/logger.dart';
import '../data_source/item_local_data_source.dart';
import '../data_source/item_remote_data_source.dart';
import '../model/item_model.dart';

class ItemRepository {
  ItemRepository({
    required this.localDataSource,
    required this.remoteDataSource,
  })   : assert(localDataSource != null),
        assert(remoteDataSource != null);

  final ItemLocalDataSource localDataSource;
  final ItemRemoteDataSource remoteDataSource;

  Future<Either<AppFailure, Unit>> fetchAndSaveAll() async {
    try {
      final models = await remoteDataSource.fetchAll();
      try {
        await localDataSource.replaceAll(models);
      } catch (e) {
        return left(AppFailure.localDataError(e));
      }
      return right(unit);
    } on DioError catch (e) {
      return left(AppFailure.remoteServerError(
        e.message,
        code: e.response?.statusCode,
      ));
    } catch (e) {
      logger.e(e.toString(), e);
      return left(AppFailure.unexpectedError(e));
    }
  }

  Future<Either<AppFailure, List<ItemModel>>> getAll() async {
    try {
      final models = await localDataSource.getAll();
      return right(models);
    } catch (e) {
      logger.e(e.toString(), e);
      return left(AppFailure.localDataError(e));
    }
  }

  Future<Either<AppFailure, ItemModel>> getById(String id) async {
    try {
      final model = await localDataSource.getById(id);
      return right(model);
    } catch (e) {
      logger.e(e.toString(), e);
      return left(AppFailure.localDataError(e));
    }
  }
}
