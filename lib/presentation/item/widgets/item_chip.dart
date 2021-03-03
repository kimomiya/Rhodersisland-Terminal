import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../application/item/item_provider.dart';
import '../../../core/constants/assets_path.dart';
import '../../../core/enums/item_type.dart';
import '../../../domain/item/entities/item.dart';

class ItemChip extends ConsumerWidget {
  const ItemChip();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final item = watch(currentItem);

    Widget chip;
    if (item.type == ItemType.furniture) {
      chip = _buildFurnitureChip();
    } else {
      chip = _buildSpriteChip(item);
    }

    return GestureDetector(
      child: ClipOval(child: chip),
      onTap: () => _onItemTap(context),
      onLongPress: () => _onItemLongPress(context),
    );
  }

  //* Components

  Widget _buildFurnitureChip() {
    return Container(
      color: const Color(0xFFFF5722),
      child: const Icon(FontAwesomeIcons.couch, color: Colors.white),
    );
  }

  Widget _buildSpriteChip(Item item) {
    final coordX = item.spriteCoord.x;
    final coordY = item.spriteCoord.y;
    final assetPath = spritePath.replaceFirst('{x}_{y}', '${coordX}_$coordY');
    return Image.asset(assetPath, fit: BoxFit.contain);
  }

  //* Event Methods

  void _onItemTap(BuildContext context) {
    // TODO(hiei): should navigate to item drop page
  }

  void _onItemLongPress(BuildContext context) {
    // TODO(hiei): should show simple drap table
  }
}
