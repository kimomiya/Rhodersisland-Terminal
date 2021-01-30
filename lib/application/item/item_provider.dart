import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/item/item_repository.dart';
import '../../injection.dart';
import 'item_state.dart';

final itemProvider = StateNotifierProvider((ref) => locator<ItemNotifier>());

final items = Provider.autoDispose(
  (ref) => ref.watch(itemProvider.state).items,
);

final item = Provider.autoDispose.family(
  (ref, String id) {
    final items = ref.watch(itemProvider.state).items;
    return items.firstOrNull((item) => item.id.getOrCrash() == id);
  },
);

@injectable
class ItemNotifier extends StateNotifier<ItemState> {
  ItemNotifier(this._repository) : super(ItemState.initial()) {
    _load();
  }

  final ItemRepository _repository;

  Future<void> _load() async {
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
