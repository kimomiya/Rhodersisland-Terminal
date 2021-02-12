import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/item/entities/item.dart';
import '../../domain/item/item_failure.dart';

part 'items_state.freezed.dart';

@freezed
abstract class ItemsState with _$ItemsState {
  const factory ItemsState({
    @required KtList<Item> items,
    @required bool isLoading,
    @required Option<ItemFailure> failureOption,
  }) = _ItemsState;

  factory ItemsState.initial() => ItemsState(
        items: const KtList.empty(),
        isLoading: false,
        failureOption: none(),
      );
}
