import 'dart:async';

import 'package:get/get.dart';

import '../../data/model/item_model.dart';
import '../../data/repository/item_repository.dart';

class ItemsController extends GetxController {
  ItemsController({
    required this.repository,
  }) : assert(repository != null);

  final ItemRepository repository;

  final _items = <ItemModel>[];
  List<ItemModel> get items => _items;

  @override
  void onInit() {
    _initialize();

    super.onInit();
  }

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
