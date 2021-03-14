import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/matrix/matrix_repository.dart';
import '../../injection.dart';
import 'item_matrix_state.dart';

final itemMatrixProvider = StateNotifierProvider.autoDispose(
  (ref) => locator<ItemMatrixNotifier>(),
);

@injectable
class ItemMatrixNotifier extends StateNotifier<ItemMatrixState> {
  ItemMatrixNotifier(this._matrixRepository) : super(ItemMatrixState.initial());

  final MatrixRepository _matrixRepository;

  Future<void> loadMatrix(String id) async {
    state = state.copyWith(isLoading: true, failureOption: none());

    final failureOrMatrix = await _matrixRepository.loadByItem(id);
    state = failureOrMatrix.fold(
      (failure) => state.copyWith(
        isLoading: false,
        failureOption: optionOf(failure),
      ),
      (matrix) => state.copyWith(
        isLoading: false,
        matrix: matrix,
      ),
    );
  }

  void sortByDropRate(bool ascending) {
    final matrix = [...state.matrix.iter];
    matrix.sort((prev, next) {
      if (ascending) {
        return prev.quantity.compareTo(next.quantity);
      } else {
        return next.quantity.compareTo(prev.quantity);
      }
    });
    state = state.copyWith(matrix: matrix.toImmutableList());
  }
}
