import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/item/item_provider.dart';
import '../../../application/item/items_provider.dart';
import '../../../core/constants/assets_path.dart';
import '../../../generated/l10n.dart';

class MaterialItemsView extends StatelessWidget {
  const MaterialItemsView();

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
      S.of(context).material,
      style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildGrid() {
    return Consumer(
      builder: (contexxt, watch, child) {
        final materials = watch(materialItems);

        final chips = <Widget>[];
        for (final item in materials.iter) {
          final chip = ProviderScope(
            overrides: [currentItem.overrideWithValue(item)],
            child: const _ItemChip(),
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

//* Components

class _ItemChip extends ConsumerWidget {
  const _ItemChip();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final item = watch(currentItem);
    final coordX = item.spriteCoord.x;
    final coordY = item.spriteCoord.y;
    final assetPath = spritePath.replaceFirst('{x}_{y}', '${coordX}_$coordY');
    return GestureDetector(
      child: ClipOval(
        child: Image.asset(assetPath, fit: BoxFit.contain),
      ),
      onTap: () => _onItemTap(context),
      onLongPress: () => _onItemLongPress(context),
    );
  }

  //* Event Methods

  void _onItemTap(BuildContext context) {
    // TODO(hiei): should navigate to item drop page
  }

  void _onItemLongPress(BuildContext context) {
    // TODO(hiei): should show simple drap table
  }
}
