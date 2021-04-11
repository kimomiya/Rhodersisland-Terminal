import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

import '../../domain/item/item_repository.dart';
import '../../injection.dart';
import 'items_state.dart';

final itemsProvider =
    StateNotifierProvider.autoDispose<ItemsNotifier, ItemsState>(
  (ref) => locator<ItemsNotifier>(),
);

@injectable
class ItemsNotifier extends StateNotifier<ItemsState> {
  ItemsNotifier(this._repository) : super(ItemsState.initial()) {
    _loadItems();
  }

  final ItemRepository _repository;

  Future<void> _loadItems() async {
    state = state.copyWith(isLoading: true, failureOption: none());

    final failureOrItems = await _repository.loadAll();
    state = failureOrItems.fold(
      (failure) => state.copyWith(
        isLoading: false,
        failureOption: optionOf(failure),
      ),
      (items) => state.copyWith(
        items: items,
        isLoading: true,
        failureOption: none(),
      ),
    );
  }
}
