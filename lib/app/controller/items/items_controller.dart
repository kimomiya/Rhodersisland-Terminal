import 'dart:async';

import 'package:get/get.dart';
import 'package:supercharged/supercharged.dart';

import '../../core/enum/item_type.dart';
import '../../data/model/item_model.dart';
import '../../data/repository/item_repository.dart';

class ItemsController extends GetxController {
  ItemsController({
    required this.repository,
  }) : assert(repository != null);

  final ItemRepository repository;

  final _items = <ItemModel>[];

  @override
  void onInit() {
    _initialize();

    super.onInit();
  }

  List<ItemModel> filterBy(ItemType type) =>
      _items.filter((item) => item.type == type.value).toList();

  Future<void> _initialize() async {
    await _getAll();
    await repository.fetchAndSaveAll();
    await _getAll();
  }

  Future<void> _getAll() async {
    final failureOrItems = await repository.getAll();
    failureOrItems.fold((_) {}, (items) {
      _items.clear();
      _items.addAll(items);
    });
    update();
  }
}
