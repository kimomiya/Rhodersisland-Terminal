import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../../generated/l10n.dart';

class SplashLoadingView extends StatelessWidget {
  const SplashLoadingView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildIndicator(),
        SizedBox(height: 40.h),
        _buildConnectingText(context),
        _buildAttentionText(context),
      ],
    );
  }

  //* Components

  Widget _buildIndicator() {
    return SizedBox(
      height: 80.h,
      width: 80.h,
      child: LoadingIndicator(
        indicatorType: Indicator.ballRotateChase,
        color: const Color(0xFF0F0F0F),
      ),
    );
  }

  Widget _buildConnectingText(BuildContext context) {
    return Text(
      S.of(context).connecting,
      style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildAttentionText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Text(
        S.of(context).amiyaAttention,
        style: const TextStyle(color: Colors.grey),
        textAlign: TextAlign.center,
      ),
    );
  }
}
