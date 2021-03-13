import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../generated/l10n.dart';
import '../../core/widgets/rhodes_app_bar.dart';

class ItemStatsPage extends StatelessWidget {
  const ItemStatsPage(this.id);

  final String? id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RhodesAppBar(title: Text(S.of(context).stats)),
      body: _ContentView(id),
    );
  }
}

class _ContentView extends ConsumerWidget {
  const _ContentView(this.id);

  final String? id;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Container();
  }
}
