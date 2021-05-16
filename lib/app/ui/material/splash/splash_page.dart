import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/splash/splash_controller.dart';
import 'widgets/index.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildBody()),
      backgroundColor: Colors.grey[50],
    );
  }

  Widget _buildBody() {
    return GetBuilder<SplashController>(
      builder: (controller) => AnimatedOpacity(
        opacity: controller.opacity,
        duration: const Duration(milliseconds: 750),
        onEnd: controller.toNext,
        child: const SplashContentView(),
      ),
    );
  }
}
