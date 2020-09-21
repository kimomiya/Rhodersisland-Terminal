import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../core/images/image_url.dart';
import '../../cubit/character/character_cubit.dart';
import '../../data/character/entities/character.dart';
import '../../generated/l10n.dart';
import '../../injection.dart';
import '../core/char_rarity_view.dart';
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w.toDouble()),
                  child: Column(
                    children: [
                      _buildProfile(),
                      Text(_character.description),
                    ],
                  ),
                ),
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

  //* Widgets

  Widget _buildProfile() {
    return Container(
      height: 300.h.toDouble(),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: _buildAvatar(),
          ),
          Expanded(
            flex: 4,
            child: _buildBasicInfo(),
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Padding(
      padding: EdgeInsets.only(right: 24.w.toDouble()),
      child: CachedNetworkImage(
        imageUrl: avatarURL(id),
        placeholder: (context, url) =>
            const CircularProgressIndicator().center(),
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _buildBasicInfo() {
    final displayLogo = DecorationImage(
      image: CachedNetworkImageProvider(logoURL(_character.displayLogo)),
      colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.4),
        BlendMode.dstIn,
      ),
      fit: BoxFit.fitHeight,
    );

    final rarity = Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h.toDouble()),
      child: CharRarityView(rarity: _character.rarity),
    );

    final appellation = Text(
      _character.appellation,
      style: TextStyle(
        fontSize: 32.sp.toDouble(),
        fontWeight: FontWeight.bold,
      ),
    );

    final name = Text(
      _character.name,
      style: TextStyle(
        fontSize: 64.sp.toDouble(),
        fontWeight: FontWeight.bold,
      ),
    );

    return Container(
      decoration: BoxDecoration(image: displayLogo),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          rarity,
          Row(
            children: [
              SizedBox(width: 4.w.toDouble()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appellation,
                  name,
                ],
              ),
            ],
          ),
        ],
      ),
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
