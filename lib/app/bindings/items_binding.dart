import 'package:get/get.dart';

import '../controller/items/items_controller.dart';

class ItemsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemsController(repository: Get.find()));
  }
}
