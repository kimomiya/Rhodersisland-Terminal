import 'dart:core';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:supercharged/supercharged.dart';

import '../../../../controller/items/items_controller.dart';
import '../../../../core/assets/images.dart';
import '../../../../core/enum/item_type.dart';
import '../../../../data/models/item_model.dart';

class ItemChip extends GetView<ItemsController> {
  const ItemChip(this.item, {Key? key}) : super(key: key);

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    Widget chip;
    if (item.type == ItemType.furniture.value) {
      chip = _buildFurnitureChip();
    } else {
      chip = _buildSpriteChip(item);
    }

    return GestureDetector(
      child: ClipOval(child: chip),
      onTap: () => _onItemTap(item),
      onLongPress: () => _onItemLongPress(item),
    );
  }

  //* Components

  Widget _buildFurnitureChip() {
    return const ColoredBox(
      color: Color(0xFFFF5722),
      child: Icon(FontAwesomeIcons.couch, color: Colors.white),
    );
  }

  Widget _buildSpriteChip(ItemModel item) {
    final coordX = item.spriteCoord.elementAtOrNull(0);
    final coordY = item.spriteCoord.elementAtOrNull(1);

    if (coordX == null || coordY == null) {
      return const ColoredBox(
        color: Color(0xFFFF5722),
        child: Icon(FontAwesomeIcons.dove, color: Colors.white),
      );
    }

    final assetPath = Assets.sprite.replaceFirst(
      '{x}_{y}',
      '${coordX}_$coordY',
    );
    return Image.asset(assetPath, fit: BoxFit.contain);
  }

  //* Event Methods

  void _onItemTap(ItemModel item) => controller.toDetails(item.id);

  void _onItemLongPress(ItemModel item) {
    // TODO(hiei): should show simple drap table
  }
}
