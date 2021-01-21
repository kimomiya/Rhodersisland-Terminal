import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import 'core/constants/app_constants.dart';
import 'database.dart' as database;
import 'infrastructure/core/interceptors.dart';
import 'injection.config.dart';

final locator = GetIt.instance;

@InjectableInit()
Future<void> configure() => $initGetIt(locator);

//* Register Module

@module
abstract class RegisterModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @preResolve
  @lazySingleton
  Future<Database> get db async => openDatabase(
        join(await getDatabasesPath(), databaseName),
        version: databaseVersion,
        onConfigure: database.onConfigure,
        onCreate: database.onCreate,
      );

  @lazySingleton
  Dio get client {
    final options = BaseOptions(
      connectTimeout: networkTimeout,
      receiveTimeout: networkTimeout,
      sendTimeout: networkTimeout,
      baseUrl:
          'https://raw.githubusercontent.com/Kengxxiao/ArknightsGameData/master',
    );
    return Dio(options)..addInterceptors();
  }

  @lazySingleton
  Connectivity get connectivity => Connectivity();
}
