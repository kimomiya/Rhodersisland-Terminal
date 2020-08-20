import '../../generated/l10n.dart';

enum Profession {
  pioneer,
  sniper,
  medic,
  caster,
  warrior,
  tank,
  supporter,
  specialist,
}

extension ProfessionValues on Profession {
  String translate(S intl) {
    switch (this) {
      case Profession.pioneer:
        return intl.pioneer;

      case Profession.sniper:
        return intl.sniper;

      case Profession.medic:
        return intl.medic;

      case Profession.caster:
        return intl.caster;

      case Profession.warrior:
        return intl.warrior;

      case Profession.tank:
        return intl.tank;

      case Profession.supporter:
        return intl.supporter;

      case Profession.specialist:
        return intl.specialist;

      default:
        return '';
    }
  }

  String get value {
    switch (this) {
      case Profession.pioneer:
        return 'PIONEER';

      case Profession.sniper:
        return 'SNIPER';

      case Profession.medic:
        return 'MEDIC';

      case Profession.caster:
        return 'CASTER';

      case Profession.warrior:
        return 'WARRIOR';

      case Profession.tank:
        return 'TANK';

      case Profession.supporter:
        return 'SUPPORT';

      case Profession.specialist:
        return 'SPECIAL';

      default:
        return '';
    }
  }
}
