import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/failure/item_failure.dart';
import '../data_source/item_local_data_source.dart';
import '../data_source/item_remote_data_source.dart';

class ItemRepository {
  ItemRepository({
    required this.localDataSource,
    required this.remoteDataSource,
  })   : assert(localDataSource != null),
        assert(remoteDataSource != null);

  final ItemLocalDataSource localDataSource;
  final ItemRemoteDataSource remoteDataSource;

  Future<Either<ItemFailure, Unit>> fetchAndSaveAll() async {
    try {
      final models = await remoteDataSource.fetchAll();
      await localDataSource.replaceAll(models);
      return right(unit);
    } on DioError catch (e) {
      return left(ItemFailure.remoteServer(
        e.message,
        code: e.response?.statusCode,
      ));
    } catch (e) {
      return left(ItemFailure.unexpected(e));
    }
  }
}
