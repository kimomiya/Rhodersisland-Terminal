// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart';
import 'package:sqflite/sqflite.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared/app_settings.dart';
import 'data/character/data_sources/character_local_data_source.dart';
import 'data/character/data_sources/character_remote_data_source.dart';
import 'data/character/character_repository.dart';
import 'data/core/network_info.dart';
import 'injection.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<Connectivity>(() => registerModule.connectivity);
  final resolvedDatabase = await registerModule.db;
  gh.lazySingleton<Database>(() => resolvedDatabase);
  gh.lazySingleton<Dio>(() => registerModule.client);
  gh.lazySingleton<NetworkInfo>(() => NetworkInfoImpl(get<Connectivity>()));
  final resolvedSharedPreferences = await registerModule.prefs;
  gh.lazySingleton<SharedPreferences>(() => resolvedSharedPreferences);
  gh.lazySingleton<AppSettings>(
      () => AppSettingsImpl(get<SharedPreferences>()));
  gh.lazySingleton<CharacterLocalDataSource>(() => CharacterLocalDataSourceImpl(
      db: get<Database>(), settings: get<AppSettings>()));
  gh.lazySingleton<CharacterRemoteDataSource>(() =>
      CharacterRemoteDataSourceImpl(
          client: get<Dio>(), settings: get<AppSettings>()));
  gh.lazySingleton<CharacterRepository>(() => CharacterRepositoryImpl(
        remoteDataSource: get<CharacterRemoteDataSource>(),
        localDataSource: get<CharacterLocalDataSource>(),
        networkInfo: get<NetworkInfo>(),
      ));
  return get;
}

class _$RegisterModule extends RegisterModule {}
