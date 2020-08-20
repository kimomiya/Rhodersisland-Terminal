import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../cubit/character/list/character_list_cubit.dart';
import '../../generated/l10n.dart';
import '../../injection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => locator<CharacterListCubit>(),
        child: const _ContentView(),
      ),
    );
  }
}

class _ContentView extends StatefulWidget {
  const _ContentView({Key key}) : super(key: key);

  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<_ContentView> {
  var _selectedRarity = <int>[];
  var _selectedProfession = <String>[];
  var _selectedTags = <String>[];

  @override
  void initState() {
    super.initState();

    context.bloc<CharacterListCubit>().getCharacterList();
  }

  @override
  Widget build(BuildContext context) {
    return Text(S.of(context).home).center();
  }
}
