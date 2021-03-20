import 'package:flutter_test/flutter_test.dart';
import 'package:rhodes_island_terminal/core/classes/safety_change_notifier.dart';

void main() {
  group('safetyNotifyListeners', () {
    SafetyChangeNotifier? safetyNotifier;
    int? listenerCallCount;

    setUp(() {
      listenerCallCount = 0;
      safetyNotifier = SafetyChangeNotifier()
        ..addListener(() => listenerCallCount = listenerCallCount! + 1);
    });

    test('should call notifyListeners', () {
      safetyNotifier!.safetyNotifyListeners();
      expect(listenerCallCount, 1);
    });

    test('should not call notifyListeners if disposed', () {
      safetyNotifier!.dispose();
      safetyNotifier!.safetyNotifyListeners();
      expect(listenerCallCount, 0);
    });
  });
}
