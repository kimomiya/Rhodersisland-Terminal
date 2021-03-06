import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/pref_keys.dart';
import '../../../core/enums/theme_type.dart';

abstract class ThemeLocalDataSource {
  ThemeType loadTheme();

  Future<void> saveTheme(ThemeType type);
}

@LazySingleton(as: ThemeLocalDataSource)
class ThemeLocalDataSourceImpl implements ThemeLocalDataSource {
  const ThemeLocalDataSourceImpl(
    this._prefs,
  );

  final SharedPreferences _prefs;

  @override
  ThemeType loadTheme() {
    final value = _prefs.getString(themeTypeKey);
    return ThemeTypeValue.of(value);
  }

  @override
  Future<void> saveTheme(ThemeType theme) async {
    await _prefs.setString(themeTypeKey, theme.value);
  }
}
