import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/images/images.dart';

class SplashContentView extends StatelessWidget {
  const SplashContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 3, child: _logoView),
        Expanded(flex: 1, child: _buildTipsView()),
      ],
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
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
      child: Column(
        children: [
          _buildConnectingText(),
          SizedBox(height: 48.h),
          _buildAttentionText(),
        ],
      ),
    );
  }

  Widget _buildConnectingText() => Text(
        'connecting'.tr,
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 28.sp,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      );

  Widget _buildAttentionText() => Text(
        'amiyaAttention'.tr,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 24.sp,
        ),
        textAlign: TextAlign.center,
      );
}
