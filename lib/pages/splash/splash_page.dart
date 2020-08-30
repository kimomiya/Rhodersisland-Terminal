import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../core/images/images.dart';
import '../../cubit/prefetch/prefetch_cubit.dart';
import '../../generated/l10n.dart';
import '../../injection.dart';
import '../router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
      body: BlocProvider(
        create: (_) => locator<PrefetchCubit>(),
        child: const _ContentView(),
      ),
      backgroundColor: Colors.grey[50],
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.bloc<PrefetchCubit>().fetchData();

    return BlocListener<PrefetchCubit, PrefetchState>(
      listener: _listenCubitState,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLogo(),
          _buildLoadingView(context),
        ],
      ),
    );
  }

  void _listenCubitState(BuildContext context, PrefetchState state) {
    state.maybeMap(
      fetchSuccess: (_) => context.navigator.push(Routes.home),
      fetchFailure: (failure) => print(failure),
      orElse: () {},
    );
  }

  Widget _buildLogo() {
    final logo = Image.asset(
      Images.logo,
      width: ScreenUtil.screenWidth * 0.618,
      fit: BoxFit.fitWidth,
    );
    return logo.center().padding(top: 180);
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

    final loadingTip = Text(
      intl.splashLoadingTip,
      textAlign: TextAlign.center,
    ).textColor(Colors.grey);

    final loadingView = Column(
      children: [
        indicator.constrained(
          height: 88.h.toDouble(),
          width: 88.h.toDouble(),
        ),
        SizedBox(height: 48.h.toDouble()),
        loadingText,
        SizedBox(height: 48.h.toDouble()),
        SizedBox(
          height: 36.h.toDouble(),
          child: BlocBuilder<PrefetchCubit, PrefetchState>(
            builder: (context, state) {
              return state.maybeMap(
                fetchInProgress: (_) => loadingTip,
                orElse: () => Container(),
              );
            },
          ),
        ),
        const SizedBox(height: kToolbarHeight),
      ],
    );
    return loadingView.padding(
      horizontal: 60.w.toDouble(),
      bottom: ScreenUtil.bottomBarHeight,
    );
  }
}
