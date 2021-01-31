import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:injectable/injectable.dart';

import '../../domain/item/item_repository.dart';
import '../../injection.dart';
import 'items_state.dart';

final itemsProvider = StateNotifierProvider.autoDispose(
  (ref) => locator<ItemNotifier>(),
);

final items = Provider.autoDispose(
  (ref) => ref.watch(itemsProvider.state).items,
);

@injectable
class ItemNotifier extends StateNotifier<ItemsState> {
  ItemNotifier(this._repository) : super(ItemsState.initial()) {
    _loadItems();
  }

  final ItemRepository _repository;

  Future<void> _loadItems() async {
    state = state.copyWith(isLoading: true, failureOption: none());

    final failureOrItems = await _repository.loadItems();
    failureOrItems.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        failureOption: optionOf(failure),
      ),
      (items) => state = state.copyWith(
        items: items,
        isLoading: true,
        failureOption: none(),
      ),
    );
  }
}
