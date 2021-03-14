import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/item/entities/item.dart';
import '../../domain/item/item_failure.dart';

part 'items_state.freezed.dart';

@freezed
class ItemsState with _$ItemsState {
  const factory ItemsState({
    required bool isLoading,
    required KtList<Item> items,
    required Option<ItemFailure> failureOption,
  }) = _ItemsState;

  factory ItemsState.initial() => ItemsState(
        isLoading: false,
        items: const KtList.empty(),
        failureOption: none(),
      );
}
