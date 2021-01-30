import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/item/item_failure.dart';

part 'prefetch_state.freezed.dart';

@freezed
abstract class PrefetchState with _$PrefetchState {
  const factory PrefetchState({
    @required bool isFetching,
    @required bool isCompleted,
    @required Option<ItemFailure> failureOption,
  }) = _PrefetchState;

  factory PrefetchState.initial() => PrefetchState(
        isFetching: false,
        isCompleted: false,
        failureOption: none(),
      );
}
