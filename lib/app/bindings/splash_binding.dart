import 'package:get/get.dart';

import '../controller/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController(
          itemRepository: Get.find(),
          stageRepository: Get.find(),
        ));
  }
}
