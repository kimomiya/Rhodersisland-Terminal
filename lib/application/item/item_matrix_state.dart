import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/matrix/entities/matrix.dart';
import '../../domain/matrix/matrix_failure.dart';

part 'item_matrix_state.freezed.dart';

@freezed
class ItemMatrixState with _$ItemMatrixState {
  const factory ItemMatrixState({
    required KtList<Matrix> matrix,
    required bool isLoading,
    required Option<MatrixFailure> failureOption,
  }) = _ItemMatrixState;

  factory ItemMatrixState.initial() => ItemMatrixState(
        matrix: const KtList.empty(),
        isLoading: false,
        failureOption: none(),
      );
}
