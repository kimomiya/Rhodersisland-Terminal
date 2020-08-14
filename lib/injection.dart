import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

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
        'rhodersisland_terminal',
        version: 1,
      );

  @lazySingleton
  Dio get client => Dio(BaseOptions(
        connectTimeout: 60 * 1000,
        receiveTimeout: 5 * 60 * 1000,
        sendTimeout: 60 * 1000,
        baseUrl:
            'https://raw.githubusercontent.com/Kengxxiao/ArknightsGameData/master',
      ));

  @lazySingleton
  Connectivity get connectivity => Connectivity();
}
