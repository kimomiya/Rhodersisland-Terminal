import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../application/item/item_provider.dart';
import '../../../core/constants/assets_path.dart';
import '../../../core/enums/item_type.dart';
import '../../../domain/item/entities/item.dart';
import '../../router.gr.dart';

class ItemChip extends ConsumerWidget {
  const ItemChip();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final item = watch(currentItemProvider);

    Widget chip;
    if (item.type == ItemType.furniture) {
      chip = _buildFurnitureChip();
    } else {
      chip = _buildSpriteChip(item);
    }

    return GestureDetector(
      child: ClipOval(child: chip),
      onTap: () => _onItemTap(context, item),
      onLongPress: () => _onItemLongPress(context),
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

  //* Event Methods

  void _onItemTap(BuildContext context, Item item) {
    final id = item.id.getOrElse('');
    if (id.isNotEmpty) {
      context.router.push(ItemStatsRoute(id: id));
    }
  }

  void _onItemLongPress(BuildContext context) {
    // TODO(hiei): should show simple drap table
  }
}
