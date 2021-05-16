import 'dart:async';

import 'package:get/get.dart';

import '../../data/repository/item_repository.dart';

class ItemsController extends GetxController {
  ItemsController({
    required this.repository,
  }) : assert(repository != null);

  final ItemRepository repository;

  Future<void> getAll() async {
    await repository.fetchAndSaveAll();
  }
}
