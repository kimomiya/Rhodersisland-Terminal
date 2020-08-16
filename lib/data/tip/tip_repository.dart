import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../core/app_failure.dart';
import '../../shared/logger.dart';
import '../core/network_info.dart';
import 'data_sources/tip_local_data_source.dart';
import 'data_sources/tip_remote_data_source.dart';
import 'models/tip.dart';

abstract class TipRepository {
  Future<Either<AppFailure, Tip>> getRandomTip();

  Future<Either<AppFailure, Unit>> fetchTips();
}

@LazySingleton(as: TipRepository)
class TipRepositoryImpl implements TipRepository {
  const TipRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  final TipRemoteDataSource remoteDataSource;
  final TipLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<AppFailure, Tip>> getRandomTip() async {
    try {
      final tip = await localDataSource.getRandomTip();
      return right(tip);
    } catch (e) {
      return left(const AppFailure.noCachedData());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> fetchTips() async {
    try {
      if (!await networkInfo.isConnected) {
        return left(const AppFailure.networkUnreachable());
      }

      final tips = await remoteDataSource.fetchTips();
      await localDataSource.saveTips(tips);
      return right(unit);
    } on DioError catch (e) {
      logger.e(e.message, e);

      final code = e.response?.statusCode ?? 500;
      final description = e.response?.statusMessage ?? 'Unhandled Error';
      return left(AppFailure.remoteServerError(
        code: code,
        description: description,
      ));
    } catch (e) {
      logger.e(e.toString(), e);

      return left(const AppFailure.remoteServerError(
        code: 500,
        description: 'Unhandled Error',
      ));
    }
  }
}
