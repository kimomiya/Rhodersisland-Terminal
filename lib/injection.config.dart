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
import 'cubit/character/character_cubit.dart';
import 'cubit/character/list/character_list_cubit.dart';
import 'data/character/data_sources/character_local_data_source.dart';
import 'data/character/data_sources/character_remote_data_source.dart';
import 'data/character/character_repository.dart';
import 'data/core/network_info.dart';
import 'cubit/prefetch/prefetch_cubit.dart';
import 'cubit/character/recruitment/recruitment_cubit.dart';
import 'injection.dart';
import 'data/tip/data_sources/tip_local_data_source.dart';
import 'data/tip/data_sources/tip_remote_data_source.dart';
import 'data/tip/tip_repository.dart';

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
  final database = await registerModule.db;
  gh.lazySingleton<Database>(() => database);
  gh.lazySingleton<Dio>(() => registerModule.client);
  gh.lazySingleton<NetworkInfo>(() => NetworkInfoImpl(get<Connectivity>()));
  final sharedPreferences = await registerModule.prefs;
  gh.lazySingleton<SharedPreferences>(() => sharedPreferences);
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
  gh.lazySingleton<RecruitmentCubit>(
      () => RecruitmentCubit(get<CharacterRepository>()));
  gh.lazySingleton<TipLocalDataSource>(() => TipLocalDataSourceImpl(
      db: get<Database>(), settings: get<AppSettings>()));
  gh.lazySingleton<TipRemoteDataSource>(() => TipRemoteDataSourceImpl(
      client: get<Dio>(), settings: get<AppSettings>()));
  gh.lazySingleton<TipRepository>(() => TipRepositoryImpl(
        remoteDataSource: get<TipRemoteDataSource>(),
        localDataSource: get<TipLocalDataSource>(),
        networkInfo: get<NetworkInfo>(),
      ));
  gh.factory<CharacterCubit>(() => CharacterCubit(get<CharacterRepository>()));
  gh.lazySingleton<CharacterListCubit>(
      () => CharacterListCubit(get<CharacterRepository>()));
  gh.factory<PrefetchCubit>(() => PrefetchCubit(
        get<AppSettings>(),
        get<TipRepository>(),
        get<CharacterRepository>(),
      ));
  return get;
}

class _$RegisterModule extends RegisterModule {}
