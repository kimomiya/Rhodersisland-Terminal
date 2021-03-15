import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

enum DropType {
  normal,
  extra,
  special,
  furniture,
  uncategorized,
}

extension DropTypeValue on DropType {
  static DropType of(String? value) => DropType.values.firstWhere(
        (type) => type.value.toLowerCase() == value?.toLowerCase(),
        orElse: () => DropType.uncategorized,
      );
}

extension DropTypeValues on DropType {
  String get value {
    switch (this) {
      case DropType.normal:
        return 'NORMAL_DROP';

      case DropType.extra:
        return 'EXTRA_DROP';

      case DropType.special:
        return 'SPECIAL_DROP';

      case DropType.furniture:
        return 'FURNITURE';

      default:
        return 'RECOGNITION_ONLY';
    }
  }

  String translate(BuildContext context) {
    switch (this) {
      case DropType.normal:
        return S.of(context).normalDrop;

      case DropType.extra:
        return S.of(context).extraDrop;

      case DropType.special:
        return S.of(context).specialDrop;

      case DropType.furniture:
        return S.of(context).furniture;

      default:
        return S.of(context).uncategorized;
    }
  }
}
