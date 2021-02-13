import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/item/entities/item.dart';
import '../../domain/item/item_failure.dart';
import '../../domain/item/item_repository.dart';
import '../../shared/logger.dart';
import '../core/status_code.dart';
import 'data_sources/item_local_data_source.dart';
import 'data_sources/item_remote_data_source.dart';
import 'dtos/item_dto.dart';

@LazySingleton(as: ItemRepository)
class ItemRepositoryImpl implements ItemRepository {
  const ItemRepositoryImpl(
    this._localDataSource,
    this._remoteDataSource,
  );

  final ItemLocalDataSource _localDataSource;
  final ItemRemoteDataSource _remoteDataSource;

  @override
  Future<Either<ItemFailure, Unit>> fetchAndSaveItems() async {
    return _execute(() async {
      final dtos = await _remoteDataSource.fetchItems();
      await _localDataSource.saveItems(dtos);
      return unit;
    });
  }

  @override
  Future<Either<ItemFailure, KtList<Item>>> loadItems() async {
    try {
      final dtos = await _localDataSource.loadItems();
      return right(dtos.map((dto) => dto.toDomain()).toImmutableList());
    } catch (e) {
      logger.e(e.toString(), e);
      return left(const ItemFailure.emptyQueryResult());
    }
  }

  //* Helper Methods

  Future<Either<ItemFailure, T>> _execute<T>(
    Future<T> Function() execution,
  ) async {
    try {
      return right(await execution());
    } on DioError catch (e) {
      return left(ItemFailure.remoteServerError(
        code: e.response?.statusCode ?? internalServerError,
        description: e.message,
      ));
    } catch (e) {
      logger.e(e.toString(), e);
      return left(const ItemFailure.unexpectedError());
    }
  }
}
