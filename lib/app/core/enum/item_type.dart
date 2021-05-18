enum ItemType {
  material,
  battleRecord,
  chip,
  furniture,
  event,
  uncategorized,
}

extension ItemTypeValue on ItemType {
  static ItemType of(String? value) => ItemType.values.firstWhere(
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

      case ItemType.event:
        return 'ACTIVITY_ITEM';

      default:
        return 'UNCATEGORIZED';
    }
  }

  String get title {
    switch (this) {
      case ItemType.material:
        return 'materials';

      case ItemType.battleRecord:
        return 'battleRecords';

      case ItemType.chip:
        return 'chips';

      case ItemType.furniture:
        return 'furniture';

      case ItemType.event:
        return 'eventItems';

      default:
        return 'uncategorized';
    }
  }
}
