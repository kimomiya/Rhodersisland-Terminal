import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/item/item_repository.dart';
import '../../injection.dart';
import 'item_state.dart';

final itemsProvider = StateNotifierProvider(
  (ref) => ItemsNotifier(locator<ItemRepository>()),
);

final items = Provider.autoDispose(
  (ref) => ref.watch(itemsProvider.state).items,
);

final item = Provider.autoDispose.family(
  (ref, String id) {
    final items = ref.watch(itemsProvider.state).items;
    return items.firstOrNull((item) => item.id.getOrCrash() == id);
  },
);

class ItemsNotifier extends StateNotifier<ItemState> {
  ItemsNotifier(this._repository) : super(ItemState.initial()) {
    _fetchItems();
  }

  final ItemRepository _repository;

  Future<void> _fetchItems() async {
    state = state.copyWith(isProcessing: true, failureOption: none());

    final failureOrItems = await _repository.fetchItems();
    failureOrItems.fold(
      (failure) => state = state.copyWith(
        isProcessing: false,
        failureOption: optionOf(failure),
      ),
      (items) => state = state.copyWith(
        items: items,
        isProcessing: true,
        failureOption: none(),
      ),
    );
  }
}
