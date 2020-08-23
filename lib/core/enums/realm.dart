import 'package:flutter/material.dart';

enum Realm {
  en_US,
  ja_JP,
  zh_CN,
}

extension RealmValue on Realm {
  static Realm of(String value) => Realm.values.firstWhere(
        (region) => region.value == value,
        orElse: () => Realm.zh_CN,
      );
}

extension RealmValues on Realm {
  String get value {
    switch (this) {
      case Realm.en_US:
        return 'en_US';

      case Realm.ja_JP:
        return 'ja_JP';

      case Realm.zh_CN:
        return 'zh_CN';

      default:
        return '';
    }
  }

  Locale get locale {
    switch (this) {
      case Realm.en_US:
        return const Locale('en', 'US');

      case Realm.ja_JP:
        return const Locale('ja', 'JP');

      case Realm.zh_CN:
        return const Locale('zh', 'CN');

      default:
        return const Locale('zh', 'CN');
    }
  }
}
