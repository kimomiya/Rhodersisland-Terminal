import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SplashPage')),
      body: GetBuilder<SplashController>(
        initState: (_) => Get.find<SplashController>().prefetch(),
        builder: (_) => const Center(child: Text('SplashController')),
      ),
    );
  }
}
