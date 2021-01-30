import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

import '../../application/item/item_provider.dart';
import '../../generated/l10n.dart';
import '../core/widgets/rhodes_app_bar.dart';
import '../core/widgets/rhodes_drawer.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RhodesAppBar(title: S.of(context).items),
      body: Consumer(
        builder: (contexxt, watch, child) {
          final $items = watch(items);
          return Text($items.size.toString());
        },
      ),
      drawer: const RhodesDrawer(),
    );
  }
}
