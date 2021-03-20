import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../application/item/item_matrix_provider.dart';
import '../../../generated/l10n.dart';
import '../../core/widgets/rhodes_app_bar.dart';
import 'widgets/index.dart';

class ItemStatsPage extends StatefulWidget {
  const ItemStatsPage(this.id);

  final String id;

  @override
  _ItemStatsPageState createState() => _ItemStatsPageState();
}

class _ItemStatsPageState extends State<ItemStatsPage> {
  @override
  void initState() {
    super.initState();

    context.read(itemMatrixProvider).loadBy(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RhodesAppBar(title: Text(S.of(context).stats)),
      body: ProviderListener(
        onChange: _onStateChanged,
        provider: itemMatrixProvider,
        child: Column(
          children: [
            ItemMatrixInfoBanner(widget.id),
            const ItemMatrixListHeader(),
            const Expanded(child: ItemMatrixListView()),
          ],
        ),
      ),
    );
  }

  //* Event Methods

  void _onStateChanged(BuildContext context, ItemMatrixNotifier notifier) {
    notifier.failureOption.fold(() {}, (failure) {
      final message = failure.map(
        remoteServerError: (_) => S.of(context).remoteServerError,
        unexpectedError: (_) => S.of(context).failedToLoadData,
      );
      BotToast.showText(text: message);
    });
  }
}
