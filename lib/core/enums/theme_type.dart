enum ThemeType {
  followSystem,
  light,
  dark,
}

extension ThemeTypeValue on ThemeType {
  static ThemeType of(String? value) => ThemeType.values.firstWhere(
        (type) => type.value.toLowerCase() == value?.toLowerCase(),
        orElse: () => ThemeType.followSystem,
      );
}

extension ThemeTypeValues on ThemeType {
  String get value {
    switch (this) {
      case ThemeType.followSystem:
        return 'theme_type_follow_system';

      case ThemeType.light:
        return 'theme_type_light';

      case ThemeType.dark:
        return 'theme_type_dark';

      default:
        return ThemeType.followSystem.value;
    }
  }
}
