import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

import '../../domain/prefetch/prefetch_failure.dart';
import '../../domain/prefetch/prefetch_repository.dart';
import '../../injection.dart';

final prefetchProvider = ChangeNotifierProvider.autoDispose(
  (ref) => locator<PrefetchNotifier>(),
);

@injectable
class PrefetchNotifier extends ChangeNotifier {
  PrefetchNotifier(this._repository) {
    _fetchAllData();
  }

  final PrefetchRepository _repository;

  bool _isCompleted = false;
  Option<PrefetchFailure> _failureOption = none();

  bool get isCompleted => _isCompleted;
  Option<PrefetchFailure> get failureOption => _failureOption;

  Future<void> _fetchAllData() async {
    _isCompleted = false;
    _failureOption = none();

    final failureOrSuccess = await _repository.fetchAndSave();
    failureOrSuccess.fold(
      (failure) => _failureOption = optionOf(failure),
      (_) => _isCompleted = true,
    );

    notifyListeners();
  }
}
