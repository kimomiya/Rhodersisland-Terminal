import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../core/images/images.dart';
import '../../generated/l10n.dart';
import '../../providers/prefetch_provider.dart';
import '../router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: Scaffold(
        body: const _ContentView(),
        backgroundColor: Colors.grey[50],
      ),
      designSize: const Size(750, 1334),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read(prefetchProvider).execute();

    return ProviderListener<PrefetchNotifier>(
      onChange: _onNotifierChanged,
      provider: prefetchProvider,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLogo(),
          _buildLoadingView(context),
        ],
      ),
    );
  }

  void _onNotifierChanged(BuildContext context, PrefetchNotifier notifier) {
    if (notifier.isCompleted) {
      context.navigator.replace(Routes.home);
    }

    if (notifier.failure == null) {
      return;
    }

    // TODO(Hiei): waiting error handling
    print(notifier.failure.toString());
  }

  //* Components

  Widget _buildLogo() {
    final logo = Image.asset(
      Images.logo,
      width: ScreenUtil().screenWidth * 0.618,
      fit: BoxFit.fitWidth,
    );
    return logo.center().padding(top: 180);
  }

  Widget _buildLoadingTip(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        final prefetch = watch(prefetchProvider);

        if (prefetch.isFetching) {
          return Text(
            S.of(context).splashLoadingTip,
            textAlign: TextAlign.center,
          ).textColor(Colors.grey);
        }
        return Container();
      },
    );
  }

  Widget _buildLoadingView(BuildContext context) {
    final intl = S.of(context);

    final indicator = LoadingIndicator(
      indicatorType: Indicator.ballRotateChase,
      color: const Color(0xFF0F0F0F),
    );

    final loadingText = Text(
      intl.splashLoading,
      textAlign: TextAlign.center,
    ).textColor(Colors.grey[700]).fontSize(30.sp.toDouble());

    final loadingView = Column(
      children: [
        indicator.constrained(height: 88.h.toDouble(), width: 88.h.toDouble()),
        SizedBox(height: 48.h.toDouble()),
        loadingText,
        SizedBox(height: 48.h.toDouble()),
        SizedBox(height: 36.h.toDouble(), child: _buildLoadingTip(context)),
        const SizedBox(height: kToolbarHeight),
      ],
    );
    return loadingView.padding(
      horizontal: 60.w.toDouble(),
      bottom: ScreenUtil().bottomBarHeight,
    );
  }
}
