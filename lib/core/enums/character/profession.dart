import '../../../generated/l10n.dart';

enum Profession {
  pioneer,
  warrior,
  sniper,
  tank,
  medic,
  supporter,
  caster,
  specialist,
}

extension ProfessionValues on Profession {
  String translate(S intl) {
    switch (this) {
      case Profession.pioneer:
        return intl.pioneer;

      case Profession.warrior:
        return intl.warrior;

      case Profession.sniper:
        return intl.sniper;

      case Profession.tank:
        return intl.tank;

      case Profession.medic:
        return intl.medic;

      case Profession.supporter:
        return intl.supporter;

      case Profession.caster:
        return intl.caster;

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

      case Profession.warrior:
        return 'WARRIOR';

      case Profession.sniper:
        return 'SNIPER';

      case Profession.tank:
        return 'TANK';

      case Profession.medic:
        return 'MEDIC';

      case Profession.supporter:
        return 'SUPPORT';

      case Profession.caster:
        return 'CASTER';

      case Profession.specialist:
        return 'SPECIAL';

      default:
        return '';
    }
  }
}
