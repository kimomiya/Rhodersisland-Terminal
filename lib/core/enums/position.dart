import '../../generated/l10n.dart';

enum Position {
  melee,
  ranged,
}

extension PositionValues on Position {
  String translate(S intl) {
    switch (this) {
      case Position.melee:
        return intl.melee;

      case Position.ranged:
        return intl.ranged;

      default:
        return '';
    }
  }

  String get value {
    switch (this) {
      case Position.melee:
        return 'MELEE';

      case Position.ranged:
        return 'RANGED';

      default:
        return '';
    }
  }
}
