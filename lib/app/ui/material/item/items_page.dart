import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/items/items_controller.dart';
import '../../../core/assets/images.dart';
import '../../../core/enum/item_type.dart';
import '../widgets/rhodes_drawer.dart';
import 'widgets/index.dart';

class ItemsPage extends GetView<ItemsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsController>(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('itemsPage'.tr)),
        body: _buildBody(),
        drawer: const RhodesDrawer(),
      ),
    );
  }

  //* Components

  Widget _buildBody() {
    final items = ItemType.values
        .where((type) => type != ItemType.uncategorized)
        .map(_buildItemSection)
        .toList();
    return Stack(
      children: [
        Center(child: Opacity(opacity: 0.25, child: Image.asset(Assets.logo))),
        Positioned.fill(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            itemBuilder: (_, index) => items[index],
            separatorBuilder: (_, __) => SizedBox(height: 8.h),
            itemCount: items.length,
          ),
        ),
      ],
    );
  }

  Widget _buildItemSection(ItemType type) {
    final title = Text(
      type.title.tr,
      style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold),
    );

    final items = controller.filterBy(type);
    final grid = GridView.count(
      primary: false,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 20.h),
      crossAxisCount: 6,
      mainAxisSpacing: 16.h,
      crossAxisSpacing: 16.w,
      children: items.map((item) => ItemChip(item)).toList(),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [title, grid],
    );
  }
}
