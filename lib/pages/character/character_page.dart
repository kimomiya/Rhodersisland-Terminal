import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../cubit/character/character_cubit.dart';
import '../../data/character/entities/character.dart';
import '../../generated/l10n.dart';
import '../../injection.dart';
import '../core/rhodes_app_bar.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({
    Key key,
    @required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RhodesAppBar(title: S.of(context).characterDex),
      body: BlocProvider(
        create: (_) => locator<CharacterCubit>(),
        child: _ContentView(id: id),
      ),
    );
  }
}

class _ContentView extends StatefulWidget {
  const _ContentView({
    Key key,
    @required this.id,
  }) : super(key: key);

  final String id;

  @override
  _ContentViewState createState() => _ContentViewState(id);
}

class _ContentViewState extends State<_ContentView> {
  _ContentViewState(this.id);

  final String id;

  Character _character;
  var _isProcessing = true;

  @override
  void initState() {
    super.initState();

    context.bloc<CharacterCubit>().getCharacterBy(id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CharacterCubit, CharacterState>(
      listener: _listenBlocState,
      child: Stack(
        children: [
          if (_character != null)
            Positioned.fill(
              child: Column(
                children: [
                  Text(_character.name),
                  Text(_character.appellation),
                  Text(_character.description),
                ],
              ),
            ),
          if (_isProcessing) const CircularProgressIndicator().center(),
        ],
      ),
    );
  }

  void _listenBlocState(BuildContext context, CharacterState state) {
    final intl = S.of(context);
    state.maybeMap(
      getCharacterInProgress: (_) => setState(() => _isProcessing = true),
      getCharacterSuccess: (state) => setState(() {
        _isProcessing = false;
        _character = state.character;
      }),
      getCharacterFailure: (state) {
        setState(() => _isProcessing = false);
        final message = state.failure.map(
          networkUnreachable: (_) => intl.networkUnreachable,
          remoteServerError: (_) => intl.remoteServerError,
          noCachedData: (_) => intl.noCharacterData,
        );
        _showErrorDialog(message);
      },
      orElse: () {},
    );
  }

  //* Helper Methods

  void _showErrorDialog(String message) {
    showDialog<void>(
      context: context,
      child: AlertDialog(
        content: Text(message),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
