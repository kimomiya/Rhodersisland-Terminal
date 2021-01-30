import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/asset_path.dart';

class SplashPage extends StatelessWidget {
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const _ContentView(),
      backgroundColor: Colors.grey[50],
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildLogo(),
      ],
    );
  }

  //* Components

  Widget _buildLogo() {
    final logo = Image.asset(
      logoPath,
      width: ScreenUtil().screenWidth * 0.618,
      fit: BoxFit.fitWidth,
    );
    return Padding(
      padding: EdgeInsets.only(top: 180.h),
      child: Center(child: logo),
    );
  }
}
