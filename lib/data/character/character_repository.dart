import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../core/app_failure.dart';
import '../../shared/logger.dart';
import '../core/network_info.dart';
import 'data_sources/character_local_data_source.dart';
import 'data_sources/character_remote_data_source.dart';
import 'entities/character_lite.dart';
import 'models/character_model.dart';

abstract class CharacterRepository {
  Future<Either<AppFailure, List<CharacterLite>>> getOperatorList();

  Future<Either<AppFailure, Unit>> fetchCharacterList();
}

@LazySingleton(as: CharacterRepository)
class CharacterRepositoryImpl implements CharacterRepository {
  const CharacterRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  final CharacterRemoteDataSource remoteDataSource;
  final CharacterLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<AppFailure, List<CharacterLite>>> getOperatorList() async {
    try {
      final characters = await localDataSource.getOperatorList();
      return right(characters.map((model) => model.toLite()).toList());
    } catch (e) {
      logger.e(e.message, e);

      return left(const AppFailure.noCachedData());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> fetchCharacterList() async {
    try {
      if (!await networkInfo.isConnected) {
        return left(const AppFailure.networkUnreachable());
      }

      final characters = await remoteDataSource.fetchCharacterList();
      await localDataSource.saveCharacterList(characters);
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
