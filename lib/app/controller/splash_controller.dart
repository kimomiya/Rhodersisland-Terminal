import 'dart:async';

import 'package:get/get.dart';

import '../data/repository/item_repository.dart';

class SplashController extends GetxController {
  SplashController({
    required this.itemRepository,
  }) : assert(itemRepository != null);

  final ItemRepository itemRepository;

  void prefetch() => Future.wait([
        itemRepository.fetchAndSaveAll(),
      ]);
}
