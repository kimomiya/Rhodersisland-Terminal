import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

import '../core/app_failure.dart';
import '../data/character/character_repository.dart';
import '../injection.dart';

// TODO(Hiei): should depend on AppSettings using
final prefetchProvider = ChangeNotifierProvider(
  (_) => locator<PrefetchNotifier>(),
);

@injectable
class PrefetchNotifier extends ChangeNotifier {
  PrefetchNotifier(this._repository);

  final CharacterRepository _repository;

  var isFetching = false;
  var isCompleted = false;
  AppFailure failure;

  Future<void> execute() async {
    isFetching = true;

    final failureOrVoid = await _repository.fetchCharacterList();
    failureOrVoid.fold(
      (failure) => failure = failure,
      (_) => isCompleted = true,
    );

    isFetching = false;

    notifyListeners();
  }
}
