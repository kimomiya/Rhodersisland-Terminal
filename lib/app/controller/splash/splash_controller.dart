import 'package:get/get.dart';

import '../../router/router.dart';

class SplashController extends GetxController {
  SplashController();

  var _opacity = 0.0;
  double get opacity => _opacity;

  @override
  void onInit() {
    _initialize();

    super.onInit();
  }

  void toNext() => Get.offAllNamed<void>(Routes.items);

  void _initialize() => Future.delayed(
        Duration.zero,
        () {
          _opacity = 1;
          update();
        },
      );
}
