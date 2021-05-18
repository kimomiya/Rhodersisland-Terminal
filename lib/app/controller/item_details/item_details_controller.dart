import 'package:get/get.dart';

import '../../data/repository/item_repository.dart';

class ItemDetailsController extends GetxController {
  ItemDetailsController({
    required this.repository,
  }) : assert(repository != null);

  final ItemRepository repository;
}
