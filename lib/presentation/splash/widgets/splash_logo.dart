import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/asset_path.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 160.h),
      child: Center(
        child: Image.asset(
          logoPath,
          width: ScreenUtil().screenWidth * 0.618,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
