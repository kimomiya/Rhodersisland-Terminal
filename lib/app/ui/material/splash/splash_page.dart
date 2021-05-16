import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/splash/splash_controller.dart';
import '../../../core/images/images.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildBody()),
      backgroundColor: Colors.grey[50],
    );
  }

  Widget _buildBody() {
    return GetX<SplashController>(
      initState: (_) => Get.find<SplashController>().initialize(),
      builder: (controller) => AnimatedOpacity(
        opacity: controller.opacity,
        duration: const Duration(milliseconds: 750),
        onEnd: controller.toNext,
        child: Column(
          children: [
            Expanded(flex: 3, child: _logoView),
            Expanded(flex: 1, child: _buildTipsView()),
          ],
        ),
      ),
    );
  }

  Widget get _logoView => Center(
        child: Image.asset(
          logoPath,
          width: ScreenUtil().screenWidth * 0.618,
          fit: BoxFit.contain,
        ),
      );

  Widget _buildTipsView() {
    final connectingText = Text(
      'connecting'.tr,
      style: TextStyle(
        color: Colors.grey[700],
        fontSize: 28.sp,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );

    final attentionText = Text(
      'amiyaAttention'.tr,
      style: TextStyle(
        color: Colors.grey[600],
        fontSize: 24.sp,
      ),
      textAlign: TextAlign.center,
    );

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
      child: Column(
        children: [
          connectingText,
          SizedBox(height: 48.h),
          attentionText,
        ],
      ),
    );
  }
}
