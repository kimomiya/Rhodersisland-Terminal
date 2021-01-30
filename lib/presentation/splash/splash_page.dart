import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/prefetch/prefetch_provider.dart';
import '../../application/prefetch/prefetch_state.dart';
import '../../core/constants/asset_path.dart';
import '../../generated/l10n.dart';
import '../router.gr.dart';
import 'widgets/index.dart';

class SplashPage extends StatelessWidget {
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(child: _ContentView()),
      backgroundColor: Colors.grey[50],
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView();

  @override
  Widget build(BuildContext context) {
    return ProviderListener(
      onChange: _onStateChanged,
      provider: prefetchProvider.state,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLogo(),
          const SplashLoadingView(),
        ],
      ),
    );
  }

  //* Components

  Widget _buildLogo() {
    final logo = Image.asset(
      logoPath,
      width: ScreenUtil().screenWidth * 0.618,
      fit: BoxFit.contain,
    );
    return Padding(
      padding: EdgeInsets.only(top: 160.h),
      child: Center(child: logo),
    );
  }

  //* Event Methods

  void _onStateChanged(BuildContext context, PrefetchState state) {
    if (state.isCompleted) {
      context.navigator.replace(Routes.items);
    }

    state.failureOption.fold(() {}, (failure) {
      failure.maybeMap(
        networkUnreachable: (_) => BotToast.showText(
          text: S.of(context).networkUnreachable,
        ),
        remoteServerError: (_) => BotToast.showText(
          text: S.of(context).remoteServerError,
        ),
        orElse: () {},
      );
    });
  }
}
