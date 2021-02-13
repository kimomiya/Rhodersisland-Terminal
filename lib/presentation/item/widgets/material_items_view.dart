import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kt_dart/collection.dart';

import '../../../application/item/item_provider.dart';
import '../../../application/item/items_provider.dart';
import '../../../shared/crop_sprite.dart';

class MaterialItemsView extends StatelessWidget {
  const MaterialItemsView();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (contexxt, watch, child) {
        final materials = watch(materialItems);
        if (materials?.isEmpty() ?? true) {
          return Container();
        }

        final item = materials.first();
        return ProviderScope(
          overrides: [currentItem.overrideWithValue(item)],
          child: const _ItemChip(),
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
    return FutureBuilder<File>(
      future: cropSprite(item.spriteCoord.x, item.spriteCoord.y),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ClipOval(
            child: Image.file(snapshot.data, width: 100.w, height: 100.w),
          );
        }
        return Container();
      },
    );
  }
}
