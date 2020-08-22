import '../../../generated/l10n.dart';
import 'rarity.dart';

enum Experience {
  top,
  senior,
  starter,
}

extension ExperienceValues on Experience {
  String translate(S intl) {
    switch (this) {
      case Experience.top:
        return intl.top;

      case Experience.senior:
        return intl.senior;

      case Experience.starter:
        return intl.starter;

      default:
        return '';
    }
  }

  List<Rarity> get rarities {
    switch (this) {
      case Experience.top:
        return [Rarity.six];

      case Experience.senior:
        return [Rarity.five];

      case Experience.starter:
        return [Rarity.one, Rarity.two, Rarity.three, Rarity.four];

      default:
        return [];
    }
  }
}
