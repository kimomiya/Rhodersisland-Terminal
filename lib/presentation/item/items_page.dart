import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/item/items_provider.dart';
import '../../application/item/items_state.dart';
import '../../generated/l10n.dart';
import '../core/widgets/rhodes_app_bar.dart';
import '../core/widgets/rhodes_drawer.dart';
import 'widgets/index.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RhodesAppBar(title: Text(S.of(context).chooseItem)),
      body: ProviderListener(
        onChange: _onStateChanged,
        provider: itemsProvider.state,
        child: _buildBody(),
      ),
      drawer: const RhodesDrawer(),
    );
  }

  //* Components

  Widget _buildBody() {
    const items = [
      MaterialsView(),
      BattleRecordsView(),
      ChipsView(),
      FurnitureView(),
      EventItemsView(),
    ];
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 40.w),
      itemBuilder: (context, index) => items[index],
      itemCount: items.length,
    );
  }

  //* Event Methods

  void _onStateChanged(BuildContext context, ItemsState state) {
    state.failureOption.fold(() {}, (failure) {
      final message = failure.map(
        remoteServerError: (_) => S.of(context).remoteServerError,
        unexpectedError: (_) => S.of(context).failedToLoadData,
      );
      BotToast.showText(text: message);
    });
  }
}
