import 'package:flutter/material.dart';

class SafetyChangeNotifier extends ChangeNotifier {
  var _isAlive = true;

  @override
  void dispose() {
    _isAlive = false;

    super.dispose();
  }

  @protected
  @visibleForTesting
  void safetyNotifyListeners() {
    if (_isAlive) {
      notifyListeners();
    }
  }
}
