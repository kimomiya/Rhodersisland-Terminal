import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

enum ItemType {
  material,
  cardExp,
  chip,
  furn,
  activityItem,
  uncategorized,
}

extension ItemTypeValue on ItemType {
  static ItemType of(String value) => ItemType.values.firstWhere(
        (type) => type.value.toLowerCase() == value?.toLowerCase(),
        orElse: () => ItemType.uncategorized,
      );
}

extension ItemTypeValues on ItemType {
  String get value {
    switch (this) {
      case ItemType.material:
        return 'MATERIAL';

      case ItemType.cardExp:
        return 'CARD_EXP';

      case ItemType.chip:
        return 'CHIP';

      case ItemType.furn:
        return 'FURN';

      case ItemType.activityItem:
        return 'ACTIVITY_ITEM';

      default:
        return 'UNCATEGORIZED';
    }
  }

  String translate(BuildContext context) {
    switch (this) {
      case ItemType.material:
        return S.of(context).material;

      case ItemType.cardExp:
        return S.of(context).cardExp;

      case ItemType.chip:
        return S.of(context).chip;

      case ItemType.furn:
        return S.of(context).furn;

      case ItemType.activityItem:
        return S.of(context).activityItem;

      default:
        return S.of(context).uncategorized;
    }
  }
}
