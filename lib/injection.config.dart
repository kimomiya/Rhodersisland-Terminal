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
import 'infrastructure/item/data_sources/item_local_data_source.dart';
import 'application/item/items_provider.dart';
import 'infrastructure/item/data_sources/item_remote_data_source.dart';
import 'domain/item/item_repository.dart';
import 'infrastructure/item/item_repository_impl.dart';
import 'infrastructure/core/network_info.dart';
import 'application/prefetch/prefetch_provider.dart';
import 'domain/prefetch/prefetch_repository.dart';
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
  gh.lazySingleton<ItemLocalDataSource>(
      () => ItemLocalDataSourceImpl(db: get<Database>()));
  gh.lazySingleton<ItemRemoteDataSource>(
      () => ItemRemoteDataSourceImpl(client: get<Dio>()));
  gh.lazySingleton<NetworkInfo>(() => NetworkInfoImpl(get<Connectivity>()));
  gh.factory<PrefetchNotifier>(
      () => PrefetchNotifier(get<PrefetchRepository>()));
  final resolvedSharedPreferences = await registerModule.prefs;
  gh.lazySingleton<SharedPreferences>(() => resolvedSharedPreferences);
  gh.lazySingleton<AppSettings>(
      () => AppSettingsImpl(get<SharedPreferences>()));
  gh.lazySingleton<ItemRepository>(() => ItemRepositoryImpl(
        networkInfo: get<NetworkInfo>(),
        localDataSource: get<ItemLocalDataSource>(),
        remoteDataSource: get<ItemRemoteDataSource>(),
      ));
  gh.factory<ItemNotifier>(() => ItemNotifier(get<ItemRepository>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
