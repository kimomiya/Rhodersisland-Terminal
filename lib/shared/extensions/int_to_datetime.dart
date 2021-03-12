extension IntToDateTime on int {
  DateTime? toDateTime() {
    try {
      return DateTime.fromMillisecondsSinceEpoch(this);
    } catch (e) {
      return null;
    }
  }
}
