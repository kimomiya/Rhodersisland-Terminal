import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import 'database.dart';
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
  Future<Database> get db => openDatabase(
        'rhodersisland_terminal.db',
        version: 1,
        onConfigure: onConfigure,
        onCreate: onCreate,
      );

  @lazySingleton
  Dio get client => Dio(BaseOptions(
        connectTimeout: 60 * 1000,
        receiveTimeout: 60 * 1000,
        sendTimeout: 60 * 1000,
        baseUrl:
            'https://raw.githubusercontent.com/Kengxxiao/ArknightsGameData/master',
      ));

  @lazySingleton
  Connectivity get connectivity => Connectivity();
}
