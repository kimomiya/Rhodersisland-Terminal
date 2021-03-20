import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../application/item/item_provider.dart';
import '../../../../core/constants/assets_path.dart';
import '../../../../core/enums/item_type.dart';
import '../../../../domain/item/entities/item.dart';

class ItemMatrixInfoBanner extends StatelessWidget {
  const ItemMatrixInfoBanner(this.id);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF8F1F1),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      height: kToolbarHeight + 8,
      child: Consumer(
        builder: (context, watch, child) {
          final item = watch(itemFilter(id));
          if (item == null) {
            return Container();
          }

          Widget chip;
          if (item.type == ItemType.furniture) {
            chip = _buildFurnitureChip();
          } else {
            chip = _buildSpriteChip(item);
          }

          return Row(
            children: [
              ClipOval(child: chip),
              const SizedBox(width: 8),
              Text(item.name, style: const TextStyle(fontSize: 16)),
            ],
          );
        },
      ),
    );
  }

  //* Components

  Widget _buildFurnitureChip() {
    return const ColoredBox(
      color: Color(0xFFFF5722),
      child: Icon(FontAwesomeIcons.couch, color: Colors.white),
    );
  }

  Widget _buildSpriteChip(Item item) {
    final coordX = item.spriteCoord?.x;
    final coordY = item.spriteCoord?.y;

    if (coordX == null || coordY == null) {
      return const ColoredBox(
        color: Color(0xFFFF5722),
        child: Icon(FontAwesomeIcons.dove, color: Colors.white),
      );
    }

    final assetPath = spritePath.replaceFirst('{x}_{y}', '${coordX}_$coordY');
    return Image.asset(assetPath, fit: BoxFit.contain);
  }
}
