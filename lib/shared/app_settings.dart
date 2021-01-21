import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/enums/server.dart';

const _serverKey = 'game_server';

abstract class AppSettings {
  Server getServer();

  Future<void> setServer(Server server);
}

@LazySingleton(as: AppSettings)
class AppSettingsImpl implements AppSettings {
  AppSettingsImpl(this.prefs);

  final SharedPreferences prefs;

  @override
  Server getServer() {
    final value = prefs.getString(_serverKey);
    return ServerValue.of(value);
  }

  @override
  Future<void> setServer(Server server) async {
    await prefs.setString(_serverKey, server.value);
  }
}
