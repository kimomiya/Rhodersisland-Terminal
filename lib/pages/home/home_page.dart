import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(S.of(context).home).center(),
    );
  }
}
