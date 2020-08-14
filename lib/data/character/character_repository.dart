import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../core/app_failure.dart';
import '../core/network_info.dart';
import 'data_sources/character_local_data_source.dart';
import 'data_sources/character_remote_data_source.dart';
import 'models/character.dart';

abstract class CharacterRepository {
  Future<Either<AppFailure, List<Character>>> getCharacterList();
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
  Future<Either<AppFailure, List<Character>>> getCharacterList() async {
    try {
      if (!await networkInfo.isConnected) {
        return left(const AppFailure.networkUnreachable());
      }

      final characters = await remoteDataSource.fetchCharacterList();
      return right(characters);
    } on DioError catch (e) {
      print(e);
      final code = e.response?.statusCode ?? 500;
      final description = e.response?.statusMessage ?? 'Unhandled Error';
      return left(AppFailure.remoteServerError(
        code: code,
        description: description,
      ));
    } catch (e) {
      print(e);
      return left(const AppFailure.remoteServerError(
        code: 500,
        description: 'Unhandled Error',
      ));
    }
  }
}
