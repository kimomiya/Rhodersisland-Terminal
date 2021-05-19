import 'dart:async';

import 'package:get/get.dart';
import 'package:supercharged/supercharged.dart';

import '../../core/enum/item_type.dart';
import '../../core/shared/show_error.dart';
import '../../data/models/item_model.dart';
import '../../data/repository/item_repository.dart';
import '../../router/router.dart';

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

  void toDetails(String id) => Get.toNamed<void>('${Routes.items}/$id');

  Future<void> _initialize() => _getAll();

  Future<void> _getAll() async {
    final failureOrItems = await repository.getAll();
    failureOrItems.fold(showError, (items) {
      _items.clear();
      _items.addAll(items);
    });
    update();
  }
}
