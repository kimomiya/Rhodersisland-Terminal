import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../core/enums/item_type.dart';
import '../../domain/item/item_repository.dart';
import '../../injection.dart';
import 'items_state.dart';

final itemsProvider = StateNotifierProvider.autoDispose(
  (ref) => locator<ItemsNotifier>(),
);

final materialItems = Provider.autoDispose((ref) {
  final items = ref.watch(itemsProvider.state).items;
  return items.filter((item) => item.type == ItemType.material);
});

final cardExpItems = Provider.autoDispose((ref) {
  final items = ref.watch(itemsProvider.state).items;
  return items.filter((item) => item.type == ItemType.cardExp);
});

final chipItems = Provider.autoDispose((ref) {
  final items = ref.watch(itemsProvider.state).items;
  return items.filter((item) => item.type == ItemType.chip);
});

final furnItems = Provider.autoDispose((ref) {
  final items = ref.watch(itemsProvider.state).items;
  return items.filter((item) => item.type == ItemType.furn);
});

final activityItems = Provider.autoDispose((ref) {
  final items = ref.watch(itemsProvider.state).items;
  return items.filter((item) => item.type == ItemType.activityItem);
});

@injectable
class ItemsNotifier extends StateNotifier<ItemsState> {
  ItemsNotifier(this._repository) : super(ItemsState.initial()) {
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
