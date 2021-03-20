import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

import '../../core/classes/safety_change_notifier.dart';
import '../../core/enums/theme_type.dart';
import '../../domain/theme/theme_repository.dart';
import '../../injection.dart';

final themeProvider = ChangeNotifierProvider(
  (ref) => locator<ThemeNotifier>(),
);

final currentThemeMode = Provider<ThemeMode>((ref) {
  final theme = ref.watch(themeProvider).theme;
  switch (theme) {
    case ThemeType.light:
      return ThemeMode.light;

    case ThemeType.dark:
      return ThemeMode.dark;

    default:
      return ThemeMode.system;
  }
});

@injectable
class ThemeNotifier extends SafetyChangeNotifier {
  ThemeNotifier(this._repository) {
    _load();
  }

  final ThemeRepository _repository;

  ThemeType? _theme;

  ThemeType? get theme => _theme;

  Future<void> change(ThemeType theme) async {
    _theme = await _repository.saveTheme(theme);
    safetyNotifyListeners();
  }

  void _load() {
    _theme = _repository.loadTheme();
    safetyNotifyListeners();
  }
}
