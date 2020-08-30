import 'package:flutter/material.dart';

enum Rarity {
  one,
  two,
  three,
  four,
  five,
  six,
}

extension RarityValue on Rarity {
  static Rarity of(int value) => Rarity.values.firstWhere(
        (rarity) => rarity.value == value,
        orElse: () => Rarity.one,
      );
}

extension RarityValues on Rarity {
  int get value {
    switch (this) {
      case Rarity.one:
        return 0;

      case Rarity.two:
        return 1;

      case Rarity.three:
        return 2;

      case Rarity.four:
        return 3;

      case Rarity.five:
        return 4;

      case Rarity.six:
        return 5;

      default:
        return 1;
    }
  }

  String get text {
    switch (this) {
      case Rarity.one:
        return '★1';

      case Rarity.two:
        return '★2';

      case Rarity.three:
        return '★3';

      case Rarity.four:
        return '★4';

      case Rarity.five:
        return '★5';

      case Rarity.six:
        return '★6';

      default:
        return '';
    }
  }

  Color get color {
    switch (this) {
      case Rarity.one:
        return const Color(0xFF606060);

      case Rarity.two:
        return const Color(0xFF9D9D9D);

      case Rarity.three:
        return const Color(0xFF70B04A);

      case Rarity.four:
        return const Color(0xFF8650AC);

      case Rarity.five:
        return const Color(0xFFFF8000);

      case Rarity.six:
        return const Color(0xFFCF6A32);

      default:
        return Colors.black;
    }
  }
}
