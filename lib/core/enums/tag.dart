import '../../generated/l10n.dart';

enum Tag {
  crowdControl,
  nuker,
  healing,
  support,
  dpRecovery,
  dps,
  suvival,
  aoe,
  defense,
  slow,
  debuff,
  fastRedeploy,
  shift,
  summon,
  robot,
}

extension TagValues on Tag {
  String translate(S intl) {
    switch (this) {
      case Tag.crowdControl:
        return intl.crowdControl;

      case Tag.nuker:
        return intl.nuker;

      case Tag.healing:
        return intl.healing;

      case Tag.support:
        return intl.support;

      case Tag.dpRecovery:
        return intl.dpRecovery;

      case Tag.dps:
        return intl.dps;

      case Tag.suvival:
        return intl.suvival;

      case Tag.aoe:
        return intl.aoe;

      case Tag.defense:
        return intl.defense;

      case Tag.slow:
        return intl.slow;

      case Tag.debuff:
        return intl.debuff;

      case Tag.fastRedeploy:
        return intl.fastRedeploy;

      case Tag.shift:
        return intl.shift;

      case Tag.summon:
        return intl.summon;

      case Tag.robot:
        return intl.robot;

      default:
        return '';
    }
  }
}
