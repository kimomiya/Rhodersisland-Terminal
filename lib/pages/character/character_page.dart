import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
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
      body: Container(),
    );
  }
}
