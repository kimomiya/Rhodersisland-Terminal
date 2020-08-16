import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../cubit/character/list/character_list_cubit.dart';
import '../../injection.dart';
import '../router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => locator<CharacterListCubit>(),
        child: const _ContentView(),
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}

class _ContentView extends StatefulWidget {
  const _ContentView({Key key}) : super(key: key);

  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<_ContentView> {
  @override
  void initState() {
    super.initState();

    context.bloc<CharacterListCubit>().getCharacterList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CharacterListCubit, CharacterListState>(
      listener: _listenCubitState,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/logo/logo_rhodes.png',
            width: 240,
            fit: BoxFit.fitWidth,
          ).center().padding(top: 180),
          _buildLoadingIndicator(),
        ],
      ),
    );
  }

  void _listenCubitState(BuildContext context, CharacterListState state) {
    state.maybeMap(
      getSuccess: (_) => context.navigator.push(Routes.home),
      getFailure: (state) => print(state.failure),
      orElse: () {},
    );
  }

  Widget _buildLoadingIndicator() {
    return Column(
      children: [
        LoadingIndicator(
          indicatorType: Indicator.ballRotateChase,
          color: const Color(0xFF0F0F0F),
        ).height(48).width(48),
        const Text('Connecting to the neural network')
            .textColor(Colors.grey[700])
            .fontSize(16)
            .padding(top: 40),
      ],
    ).center().padding(bottom: 80);
  }
}
