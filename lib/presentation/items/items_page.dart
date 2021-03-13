import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: _buildBody(),
      drawer: const RhodesDrawer(),
    );
  }

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
}
