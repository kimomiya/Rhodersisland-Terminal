import 'package:get/get.dart';

import '../../core/shared/show_error.dart';
import '../../data/models/item_model.dart';
import '../../data/repository/item_repository.dart';

class ItemDetailsController extends GetxController {
  ItemDetailsController({
    required this.repository,
  }) : assert(repository != null);

  final ItemRepository repository;

  ItemModel? _item;
  ItemModel? get item => _item;

  @override
  void onInit() {
    _initialize();

    super.onInit();
  }

  Future<void> _initialize() async {
    final id = Get.parameters['id'] ?? '';
    final failureOrItem = await repository.getById(id);
    failureOrItem.fold(showError, (item) => _item = item);
    update();
  }
}
