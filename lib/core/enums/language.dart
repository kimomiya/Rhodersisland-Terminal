import 'package:flutter/material.dart';

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

  Locale get locale {
    switch (this) {
      case Language.en_US:
        return const Locale('en', 'US');

      case Language.ja_JP:
        return const Locale('ja', 'JP');

      case Language.zh_CN:
        return const Locale('zh', 'CN');

      case Language.zh_TW:
        return const Locale('zh', 'TW');

      default:
        return const Locale('zh', 'CN');
    }
  }
}
