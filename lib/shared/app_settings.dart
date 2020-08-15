import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/enums/language.dart';
import '../core/enums/realm.dart';

const _isTutorialFinishedKey = 'is_tutorial_finished';
const _displayLanguageKey = 'display_language';
const _serverRealmKey = 'server_name';

abstract class AppSettings {
  bool getIsTutorialFinished();

  Future<void> setIsTutorialFinished();

  Language getDisplayLanguage();

  Future<void> setDisplayLanguage(Language language);

  Realm getServerRealm();

  Future<void> setServerRealm(Realm realm);
}

@LazySingleton(as: AppSettings)
class AppSettingsImpl implements AppSettings {
  AppSettingsImpl(this.prefs);

  final SharedPreferences prefs;

  @override
  bool getIsTutorialFinished() {
    return prefs.getBool(_isTutorialFinishedKey) ?? false;
  }

  @override
  Future<void> setIsTutorialFinished() async {
    await prefs.setBool(_isTutorialFinishedKey, true);
  }

  @override
  Language getDisplayLanguage() {
    final value = prefs.getString(_displayLanguageKey);
    return LanguageValue.of(value);
  }

  @override
  Future<void> setDisplayLanguage(Language language) async {
    await prefs.setString(_displayLanguageKey, language.value);
  }

  @override
  Realm getServerRealm() {
    final value = prefs.getString(_serverRealmKey);
    return RealmValue.of(value);
  }

  @override
  Future<void> setServerRealm(Realm realm) async {
    await prefs.setString(_serverRealmKey, realm.value);
  }
}
