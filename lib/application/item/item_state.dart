import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/item/entities/item.dart';
import '../../domain/item/item_failure.dart';

part 'item_state.freezed.dart';

@freezed
abstract class ItemState with _$ItemState {
  const factory ItemState({
    KtList<Item> items,
    @required bool isLoading,
    @required Option<ItemFailure> failureOption,
  }) = _ItemState;

  factory ItemState.initial() => ItemState(
        items: const KtList.empty(),
        isLoading: false,
        failureOption: none(),
      );
}
