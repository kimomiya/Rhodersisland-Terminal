import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

extension DioInterceptors on Dio {
  void addInterceptors() {
    final loggerInterceptor = PrettyDioLogger();
    interceptors.add(loggerInterceptor);
  }
}
