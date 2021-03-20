import 'dart:core';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../core/classes/safety_change_notifier.dart';
import '../../domain/matrix/entities/matrix.dart';
import '../../domain/matrix/matrix_failure.dart';
import '../../domain/matrix/matrix_repository.dart';
import '../../injection.dart';

final itemMatrixProvider = ChangeNotifierProvider.autoDispose(
  (ref) => locator<ItemMatrixNotifier>(),
);

@injectable
class ItemMatrixNotifier extends SafetyChangeNotifier {
  ItemMatrixNotifier(this._matrixRepository);

  final MatrixRepository _matrixRepository;

  var _matrix = const KtList<Matrix>.empty();
  var _failureOption = none<MatrixFailure>();

  var _sortAscending = true;

  KtList<Matrix> get matrix => _matrix;
  Option<MatrixFailure> get failureOption => _failureOption;

  bool get sortAscending => _sortAscending;

  Future<void> loadBy(String id) async {
    _failureOption = none();

    final failureOrMatrix = await _matrixRepository.loadByItem(id);
    failureOrMatrix.fold(
      (failure) => _failureOption = optionOf(failure),
      (matrix) => _matrix = matrix,
    );

    _sortMatrix();
    safetyNotifyListeners();
  }

  void toggleSortingDirection() {
    _sortAscending = !_sortAscending;
    _sortMatrix();
    safetyNotifyListeners();
  }

  void _sortMatrix() {
    Comparable Function(Matrix) selector;

    selector = (matrix) => matrix.expectedSanity.getOrElse(double.infinity);

    if (_sortAscending) {
      _matrix = _matrix.sortedBy(selector);
    } else {
      _matrix = _matrix.sortedByDescending(selector);
    }
  }
}
