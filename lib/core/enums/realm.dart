enum Realm {
  en_US,
  ja_JP,
  ko_KR,
  zh_CN,
  zh_TW,
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

      case Realm.ko_KR:
        return 'ko_KR';

      case Realm.zh_CN:
        return 'zh_CN';

      case Realm.zh_TW:
        return 'zh_TW';

      default:
        return '';
    }
  }

  String get description {
    switch (this) {
      case Realm.en_US:
        return '美服';

      case Realm.ja_JP:
        return '日服';

      case Realm.ko_KR:
        return '韩服';

      case Realm.zh_CN:
        return '国服';

      case Realm.zh_TW:
        return '台服';

      default:
        return '';
    }
  }
}
