import 'package:flutter/material.dart';

enum Realm {
  cn,
  jp,
  kr,
  us,
}

extension RealmValue on Realm {
  static Realm of(String value) => Realm.values.firstWhere(
        (realm) => realm.value == value,
        orElse: () => Realm.cn,
      );
}

extension RealmValues on Realm {
  String get value {
    switch (this) {
      case Realm.cn:
        return 'CN';

      case Realm.jp:
        return 'JP';

      case Realm.kr:
        return 'KR';

      case Realm.us:
        return 'US';

      default:
        return Realm.cn.value;
    }
  }

  Locale get locale {
    switch (this) {
      case Realm.cn:
        return const Locale('zh', 'CN');

      case Realm.jp:
        return const Locale('ja', 'JP');

      case Realm.kr:
        return const Locale('ko', 'KR');

      case Realm.us:
        return const Locale('en', 'US');

      default:
        return Realm.cn.locale;
    }
  }
}
