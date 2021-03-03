import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kt_dart/collection.dart';

import '../../../application/item/item_provider.dart';
import '../../../application/item/items_provider.dart';
import '../../../core/enums/item_type.dart';
import '../../../generated/l10n.dart';
import 'item_chip.dart';

final _furniture = Provider.autoDispose((ref) {
  final items = ref.watch(itemsProvider.state).items;
  return items.filter((item) => item.type == ItemType.furniture);
});

class FurnitureView extends StatelessWidget {
  const FurnitureView();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTypeLabel(context),
        _buildGrid(),
      ],
    );
  }

  Widget _buildTypeLabel(BuildContext context) {
    return Text(
      S.of(context).furniture,
      style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildGrid() {
    return Consumer(
      builder: (contexxt, watch, child) {
        final furniture = watch(_furniture);

        final chips = <Widget>[];
        for (final item in furniture.iter) {
          final chip = ProviderScope(
            overrides: [currentItem.overrideWithValue(item)],
            child: const ItemChip(),
          );
          chips.add(chip);
        }

        return GridView.count(
          primary: false,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(vertical: 20.h),
          crossAxisCount: 6,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.w,
          children: chips,
        );
      },
    );
  }
}
