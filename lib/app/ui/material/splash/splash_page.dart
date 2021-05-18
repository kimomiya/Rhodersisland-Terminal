import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/splash/splash_controller.dart';
import 'widgets/index.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => Scaffold(
        body: _buildBody(),
        backgroundColor: Colors.grey[50],
      ),
    );
  }

  Widget _buildBody() {
    return Scaffold(
      body: SafeArea(
        child: AnimatedOpacity(
          opacity: controller.opacity,
          duration: const Duration(milliseconds: 1250),
          onEnd: controller.toNext,
          child: const SplashContentView(),
        ),
      ),
      backgroundColor: Colors.grey[50],
    );
  }
}
