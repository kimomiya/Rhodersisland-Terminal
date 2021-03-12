// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;
import 'package:sqflite/sqflite.dart' as _i4;

import 'application/item/items_provider.dart' as _i10;
import 'application/prefetch/prefetch_provider.dart' as _i12;
import 'application/theme/theme_provider.dart' as _i18;
import 'domain/item/item_repository.dart' as _i8;
import 'domain/theme/theme_repository.dart' as _i15;
import 'infrastructure/core/network_info.dart' as _i11;
import 'infrastructure/item/data_sources/item_local_data_source.dart' as _i6;
import 'infrastructure/item/data_sources/item_remote_data_source.dart' as _i7;
import 'infrastructure/item/item_repository_impl.dart' as _i9;
import 'infrastructure/theme/data_sources/theme_local_data_source.dart' as _i14;
import 'infrastructure/theme/theme_repository_impl.dart' as _i16;
import 'injection.dart' as _i19;
import 'shared/app_settings.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  await gh.lazySingletonAsync<_i4.Database>(() => registerModule.db,
      preResolve: true);
  gh.lazySingleton<_i5.Dio>(() => registerModule.client);
  gh.lazySingleton<_i6.ItemLocalDataSource>(
      () => _i6.ItemLocalDataSourceImpl(get<_i4.Database>()));
  gh.lazySingleton<_i7.ItemRemoteDataSource>(
      () => _i7.ItemRemoteDataSourceImpl(client: get<_i5.Dio>()));
  gh.lazySingleton<_i8.ItemRepository>(() => _i9.ItemRepositoryImpl(
      get<_i6.ItemLocalDataSource>(), get<_i7.ItemRemoteDataSource>()));
  gh.factory<_i10.ItemsNotifier>(
      () => _i10.ItemsNotifier(get<_i8.ItemRepository>()));
  gh.lazySingleton<_i11.NetworkInfo>(
      () => _i11.NetworkInfoImpl(get<_i3.Connectivity>()));
  gh.factory<_i12.PrefetchNotifier>(
      () => _i12.PrefetchNotifier(get<_i8.ItemRepository>()));
  await gh.lazySingletonAsync<_i13.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i14.ThemeLocalDataSource>(
      () => _i14.ThemeLocalDataSourceImpl(get<_i13.SharedPreferences>()));
  gh.lazySingleton<_i15.ThemeRepository>(
      () => _i16.ThemeRepositoryImpl(get<_i14.ThemeLocalDataSource>()));
  gh.lazySingleton<_i17.AppSettings>(
      () => _i17.AppSettingsImpl(get<_i13.SharedPreferences>()));
  gh.factory<_i18.ThemeNotifier>(
      () => _i18.ThemeNotifier(get<_i15.ThemeRepository>()));
  return get;
}

class _$RegisterModule extends _i19.RegisterModule {}
