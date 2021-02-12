import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../core/widgets/rhodes_app_bar.dart';
import '../core/widgets/rhodes_drawer.dart';
import 'widgets/index.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RhodesAppBar(title: S.of(context).items),
      body: Column(
        children: const [
          MaterialItemsView(),
        ],
      ),
      drawer: const RhodesDrawer(),
    );
  }
}
