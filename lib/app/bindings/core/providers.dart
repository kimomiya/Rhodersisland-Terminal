import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../data/core/constants.dart';
import '../../data/database/app_database.dart';

AppDatabase get appDatabase => AppDatabase();

Dio get httpClient {
  final options = BaseOptions(
    connectTimeout: httpTimeout,
    receiveTimeout: httpTimeout,
    sendTimeout: httpTimeout,
  );
  return Dio(options)..addInterceptors();
}

extension DioInterceptors on Dio {
  void addInterceptors() {
    final loggerInterceptor = PrettyDioLogger(responseBody: false);
    interceptors.add(loggerInterceptor);
  }
}
