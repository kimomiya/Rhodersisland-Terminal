// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get lang {
    return Intl.message(
      'English',
      name: 'lang',
      desc: '',
      args: [],
    );
  }

  /// `Rhodesisland Terminal`
  String get title {
    return Intl.message(
      'Rhodesisland Terminal',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Splash`
  String get splash {
    return Intl.message(
      'Splash',
      name: 'splash',
      desc: '',
      args: [],
    );
  }

  /// `Connecting to the neural network of Rhodes Island.`
  String get splashLoading {
    return Intl.message(
      'Connecting to the neural network of Rhodes Island.',
      name: 'splashLoading',
      desc: '',
      args: [],
    );
  }

  /// `The first launch may take a long time.`
  String get splashLoadingTip {
    return Intl.message(
      'The first launch may take a long time.',
      name: 'splashLoadingTip',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Recruit`
  String get recruit {
    return Intl.message(
      'Recruit',
      name: 'recruit',
      desc: '',
      args: [],
    );
  }

  /// `Rarity`
  String get rarity {
    return Intl.message(
      'Rarity',
      name: 'rarity',
      desc: '',
      args: [],
    );
  }

  /// `Profession`
  String get profession {
    return Intl.message(
      'Profession',
      name: 'profession',
      desc: '',
      args: [],
    );
  }

  /// `Guard`
  String get warrior {
    return Intl.message(
      'Guard',
      name: 'warrior',
      desc: '',
      args: [],
    );
  }

  /// `Sniper`
  String get sniper {
    return Intl.message(
      'Sniper',
      name: 'sniper',
      desc: '',
      args: [],
    );
  }

  /// `Defender`
  String get tank {
    return Intl.message(
      'Defender',
      name: 'tank',
      desc: '',
      args: [],
    );
  }

  /// `Medic`
  String get medic {
    return Intl.message(
      'Medic',
      name: 'medic',
      desc: '',
      args: [],
    );
  }

  /// `Supporter`
  String get supporter {
    return Intl.message(
      'Supporter',
      name: 'supporter',
      desc: '',
      args: [],
    );
  }

  /// `Caster`
  String get caster {
    return Intl.message(
      'Caster',
      name: 'caster',
      desc: '',
      args: [],
    );
  }

  /// `Specialist`
  String get specialist {
    return Intl.message(
      'Specialist',
      name: 'specialist',
      desc: '',
      args: [],
    );
  }

  /// `Vanguard`
  String get pioneer {
    return Intl.message(
      'Vanguard',
      name: 'pioneer',
      desc: '',
      args: [],
    );
  }

  /// `Position`
  String get position {
    return Intl.message(
      'Position',
      name: 'position',
      desc: '',
      args: [],
    );
  }

  /// `Melee`
  String get melee {
    return Intl.message(
      'Melee',
      name: 'melee',
      desc: '',
      args: [],
    );
  }

  /// `Ranged`
  String get ranged {
    return Intl.message(
      'Ranged',
      name: 'ranged',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get experience {
    return Intl.message(
      'Experience',
      name: 'experience',
      desc: '',
      args: [],
    );
  }

  /// `Top Operator`
  String get top {
    return Intl.message(
      'Top Operator',
      name: 'top',
      desc: '',
      args: [],
    );
  }

  /// `Senior Operator`
  String get senior {
    return Intl.message(
      'Senior Operator',
      name: 'senior',
      desc: '',
      args: [],
    );
  }

  /// `Starter`
  String get starter {
    return Intl.message(
      'Starter',
      name: 'starter',
      desc: '',
      args: [],
    );
  }

  /// `Tag`
  String get tag {
    return Intl.message(
      'Tag',
      name: 'tag',
      desc: '',
      args: [],
    );
  }

  /// `Crowd-Control`
  String get crowdControl {
    return Intl.message(
      'Crowd-Control',
      name: 'crowdControl',
      desc: '',
      args: [],
    );
  }

  /// `Nuker`
  String get nuker {
    return Intl.message(
      'Nuker',
      name: 'nuker',
      desc: '',
      args: [],
    );
  }

  /// `Healing`
  String get healing {
    return Intl.message(
      'Healing',
      name: 'healing',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `DP-Recovery`
  String get dpRecovery {
    return Intl.message(
      'DP-Recovery',
      name: 'dpRecovery',
      desc: '',
      args: [],
    );
  }

  /// `DPS`
  String get dps {
    return Intl.message(
      'DPS',
      name: 'dps',
      desc: '',
      args: [],
    );
  }

  /// `Suvival`
  String get suvival {
    return Intl.message(
      'Suvival',
      name: 'suvival',
      desc: '',
      args: [],
    );
  }

  /// `Aoe`
  String get aoe {
    return Intl.message(
      'Aoe',
      name: 'aoe',
      desc: '',
      args: [],
    );
  }

  /// `Defense`
  String get defense {
    return Intl.message(
      'Defense',
      name: 'defense',
      desc: '',
      args: [],
    );
  }

  /// `Slow`
  String get slow {
    return Intl.message(
      'Slow',
      name: 'slow',
      desc: '',
      args: [],
    );
  }

  /// `Debuff`
  String get debuff {
    return Intl.message(
      'Debuff',
      name: 'debuff',
      desc: '',
      args: [],
    );
  }

  /// `Fast-Redeploy`
  String get fastRedeploy {
    return Intl.message(
      'Fast-Redeploy',
      name: 'fastRedeploy',
      desc: '',
      args: [],
    );
  }

  /// `Shift`
  String get shift {
    return Intl.message(
      'Shift',
      name: 'shift',
      desc: '',
      args: [],
    );
  }

  /// `Summon`
  String get summon {
    return Intl.message(
      'Summon',
      name: 'summon',
      desc: '',
      args: [],
    );
  }

  /// `Robot`
  String get robot {
    return Intl.message(
      'Robot',
      name: 'robot',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}