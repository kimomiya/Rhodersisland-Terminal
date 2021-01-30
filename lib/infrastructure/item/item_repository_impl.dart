import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/item/entities/item.dart';
import '../../domain/item/item_failure.dart';
import '../../domain/item/item_repository.dart';
import '../../shared/logger.dart';
import '../core/network_info.dart';
import '../core/status_code.dart';
import 'data_sources/item_local_data_source.dart';
import 'data_sources/item_remote_data_source.dart';
import 'dtos/item_dto.dart';

@LazySingleton(as: ItemRepository)
class ItemRepositoryImpl implements ItemRepository {
  const ItemRepositoryImpl({
    @required this.networkInfo,
    @required this.localDataSource,
    @required this.remoteDataSource,
  });

  final NetworkInfo networkInfo;
  final ItemLocalDataSource localDataSource;
  final ItemRemoteDataSource remoteDataSource;

  @override
  Future<Either<ItemFailure, Unit>> fetchAndSaveItems() async {
    return _execute(() async {
      final dtos = await remoteDataSource.fetchItems();
      await localDataSource.saveItems(dtos);
      return unit;
    });
  }

  @override
  Future<Either<ItemFailure, KtList<Item>>> loadItems() async {
    try {
      final dtos = await localDataSource.loadItems();
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
      final isConnected = await networkInfo.isConnected;
      if (!isConnected) {
        return left(const ItemFailure.networkUnreachable());
      }

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
