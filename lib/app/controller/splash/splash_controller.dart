import 'package:get/get.dart';

import '../../router/router.dart';

class SplashController extends GetxController {
  SplashController();

  final _opacity = 0.0.obs;
  double get opacity => _opacity.value;

  void initialize() => Future.delayed(Duration.zero, () => _opacity.value = 1);

  void toNext() => Get.offAllNamed<void>(Routes.items);
}
