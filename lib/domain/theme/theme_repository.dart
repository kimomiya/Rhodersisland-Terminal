import '../../core/enums/theme_type.dart';

abstract class ThemeRepository {
  ThemeType? loadTheme();

  Future<ThemeType?> saveTheme(ThemeType theme);
}
