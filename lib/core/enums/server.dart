enum Server {
  cn,
  jp,
  kr,
  us,
}

extension ServerValue on Server {
  static Server of(String value) => Server.values.firstWhere(
        (server) => server.value.toLowerCase() == value.toLowerCase(),
        orElse: () => Server.cn,
      );
}

extension ServerValues on Server {
  String get value {
    switch (this) {
      case Server.cn:
        return 'CN';

      case Server.jp:
        return 'JP';

      case Server.kr:
        return 'KR';

      case Server.us:
        return 'US';

      default:
        return Server.cn.value;
    }
  }
}
