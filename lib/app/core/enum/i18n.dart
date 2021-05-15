import 'package:flutter/material.dart';

enum I18n {
  cn,
  ja,
  kr,
  us,
}

extension I18nValue on I18n {
  static I18n of(String? value) => I18n.values.firstWhere(
        (i18n) => i18n.value.toLowerCase() == value?.toLowerCase(),
        orElse: () => I18n.cn,
      );
}

extension I18nValues on I18n {
  String get value {
    switch (this) {
      case I18n.cn:
        return 'zh';

      case I18n.ja:
        return 'ja';

      case I18n.kr:
        return 'ko';

      case I18n.us:
        return 'en';

      default:
        return I18n.cn.value;
    }
  }

  Locale get locale {
    switch (this) {
      case I18n.cn:
        return const Locale('zh', 'CN');

      case I18n.ja:
        return const Locale('ja', 'JP');

      case I18n.kr:
        return const Locale('ko', 'KR');

      case I18n.us:
        return const Locale('en', 'US');

      default:
        return I18n.cn.locale;
    }
  }
}
