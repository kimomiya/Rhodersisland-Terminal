import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

enum ItemType {
  material,
  battleRecord,
  chip,
  furniture,
  eventItem,
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

      case ItemType.battleRecord:
        return 'CARD_EXP';

      case ItemType.chip:
        return 'CHIP';

      case ItemType.furniture:
        return 'FURN';

      case ItemType.eventItem:
        return 'ACTIVITY_ITEM';

      default:
        return 'UNCATEGORIZED';
    }
  }

  String translate(BuildContext context) {
    switch (this) {
      case ItemType.material:
        return S.of(context).materials;

      case ItemType.battleRecord:
        return S.of(context).battleRecords;

      case ItemType.chip:
        return S.of(context).chips;

      case ItemType.furniture:
        return S.of(context).furniture;

      case ItemType.eventItem:
        return S.of(context).eventItems;

      default:
        return S.of(context).uncategorized;
    }
  }
}
