import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kt_dart/collection.dart';

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
        return FutureBuilder<Uint8List>(
          future: cropSprite(item.spriteCoord.x, item.spriteCoord.y),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ClipOval(
                child: Image.memory(snapshot.data, width: 100.w, height: 100.w),
              );
            }
            return Container();
          },
        );
      },
    );
  }
}
