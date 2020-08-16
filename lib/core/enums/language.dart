enum Language {
  en_US,
  ja_JP,
  zh_CN,
  zh_TW,
}

extension LanguageValue on Language {
  static Language of(String value) => Language.values.firstWhere(
        (lang) => lang.value == value,
        orElse: () => Language.zh_CN,
      );
}

extension LanguageValues on Language {
  String get value {
    switch (this) {
      case Language.en_US:
        return 'en_US';

      case Language.ja_JP:
        return 'ja_JP';

      case Language.zh_CN:
        return 'zh_CN';

      case Language.zh_TW:
        return 'zh_TW';

      default:
        return '';
    }
  }

  String get name {
    switch (this) {
      case Language.en_US:
        return 'English';

      case Language.ja_JP:
        return '日本語';

      case Language.zh_CN:
        return '简体中文';

      case Language.zh_TW:
        return '繁体中文';

      default:
        return '';
    }
  }
}
