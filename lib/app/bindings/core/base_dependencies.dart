import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../data/core/constants.dart';
import '../../data/data_source/item_local_data_source.dart';
import '../../data/data_source/item_remote_data_source.dart';
import '../../data/data_source/stage_local_data_source.dart';
import '../../data/data_source/stage_remote_data_source.dart';
import '../../data/database/app_database.dart';
import '../../data/repository/item_repository.dart';
import '../../data/repository/stage_repository.dart';

void initDependencies() {
  Get.lazyPut(() => AppDatabase(), fenix: true);
  Get.lazyPut(
    () {
      final options = BaseOptions(
        connectTimeout: httpTimeout,
        receiveTimeout: httpTimeout,
        sendTimeout: httpTimeout,
      );
      return Dio(options).._addInterceptors();
    },
    fenix: true,
  );

  Get.lazyPut<ItemLocalDataSource>(
    () => ItemLocalDataSource(client: Get.find<AppDatabase>().itemsDao),
    fenix: true,
  );
  Get.lazyPut<ItemRemoteDataSource>(
    () => ItemRemoteDataSource(client: Get.find()),
    fenix: true,
  );
  Get.lazyPut<ItemRepository>(
    () => ItemRepository(
      localDataSource: Get.find(),
      remoteDataSource: Get.find(),
    ),
    fenix: true,
  );

  Get.lazyPut<StageLocalDataSource>(
    () => StageLocalDataSource(client: Get.find<AppDatabase>().stagesDao),
    fenix: true,
  );
  Get.lazyPut<StageRemoteDataSource>(
    () => StageRemoteDataSource(client: Get.find()),
    fenix: true,
  );
  Get.lazyPut<StageRepository>(
    () => StageRepository(
      localDataSource: Get.find(),
      remoteDataSource: Get.find(),
    ),
    fenix: true,
  );
}

extension DioInterceptors on Dio {
  void _addInterceptors() {
    final loggerInterceptor = PrettyDioLogger(responseBody: false);
    interceptors.add(loggerInterceptor);
  }
}
