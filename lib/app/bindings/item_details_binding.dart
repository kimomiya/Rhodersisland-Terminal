import 'package:get/get.dart';

import '../controller/item_details/item_details_controller.dart';

class ItemDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemDetailsController(repository: Get.find()));
  }
}
