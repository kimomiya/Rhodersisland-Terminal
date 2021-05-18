import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/assets/images.dart';

class SplashContentView extends StatelessWidget {
  const SplashContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 6, child: _logoView),
        Expanded(flex: 1, child: _tipsView),
      ],
    );
  }

  Widget get _logoView => Center(
        child: Image.asset(
          Assets.logo,
          width: ScreenUtil().screenWidth * 0.618,
          fit: BoxFit.contain,
        ),
      );

  Widget get _tipsView => Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Text(
          'amiyaAttention'.tr,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      );
}
