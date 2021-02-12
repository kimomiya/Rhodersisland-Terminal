import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../../application/prefetch/prefetch_provider.dart';
import '../../../generated/l10n.dart';

final _isPrefetched = Provider.autoDispose(
  (ref) => ref.watch(prefetchProvider).isCompleted,
);

class SplashLoadingView extends StatelessWidget {
  const SplashLoadingView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          _buildConnectingView(),
          _buildAttentionText(context),
          const SizedBox(height: kToolbarHeight),
        ],
      ),
    );
  }

  Widget _buildConnectingView() {
    return Consumer(
      builder: (context, watch, state) {
        final isCompleted = watch(_isPrefetched);
        if (isCompleted) {
          return Container();
        }

        final indicator = SizedBox(
          height: 80.h,
          width: 80.h,
          child: LoadingIndicator(
            indicatorType: Indicator.ballRotateChase,
            color: const Color(0xFF0F0F0F),
          ),
        );

        final label = Padding(
          padding: EdgeInsets.symmetric(vertical: 48.h),
          child: Text(
            S.of(context).connecting,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        );

        return Column(children: [indicator, label]);
      },
    );
  }

  Widget _buildAttentionText(BuildContext context) {
    return Text(
      S.of(context).amiyaAttention,
      style: const TextStyle(color: Colors.grey),
      textAlign: TextAlign.center,
    );
  }
}
