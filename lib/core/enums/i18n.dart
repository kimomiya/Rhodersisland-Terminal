enum I18n {
  cn,
  jp,
  kr,
  us,
}

extension I18nValue on I18n {
  static I18n of(String value) => I18n.values.firstWhere(
        (i18n) => i18n.value.toLowerCase() == value.toLowerCase(),
        orElse: () => I18n.cn,
      );
}

extension I18nValues on I18n {
  String get value {
    switch (this) {
      case I18n.cn:
        return 'zh';

      case I18n.jp:
        return 'ja';

      case I18n.kr:
        return 'ko';

      case I18n.us:
        return 'en';

      default:
        return I18n.cn.value;
    }
  }
}
