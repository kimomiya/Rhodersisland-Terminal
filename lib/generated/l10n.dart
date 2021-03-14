// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;
 
      return instance;
    });
  } 

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null, 'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
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

  /// `Rhodes Island Terminal`
  String get appTitle {
    return Intl.message(
      'Rhodes Island Terminal',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Network is unreachable. Please try again later.`
  String get networkUnreachable {
    return Intl.message(
      'Network is unreachable. Please try again later.',
      name: 'networkUnreachable',
      desc: '',
      args: [],
    );
  }

  /// `Unable to connect to the remote server. Please try again later.`
  String get remoteServerError {
    return Intl.message(
      'Unable to connect to the remote server. Please try again later.',
      name: 'remoteServerError',
      desc: '',
      args: [],
    );
  }

  /// `You spoiled my grand entrance, rat.`
  String get unexpectedError {
    return Intl.message(
      'You spoiled my grand entrance, rat.',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Unable to load local data. Please reload all data and try again.`
  String get failedToLoadData {
    return Intl.message(
      'Unable to load local data. Please reload all data and try again.',
      name: 'failedToLoadData',
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

  /// `Connecting to the neural network of Rhodes Island`
  String get connecting {
    return Intl.message(
      'Connecting to the neural network of Rhodes Island',
      name: 'connecting',
      desc: '',
      args: [],
    );
  }

  /// `There's still lots of work that needs to be done, Doctor. You can't rest now!`
  String get amiyaAttention {
    return Intl.message(
      'There\'s still lots of work that needs to be done, Doctor. You can\'t rest now!',
      name: 'amiyaAttention',
      desc: '',
      args: [],
    );
  }

  /// `Choose Item`
  String get chooseItem {
    return Intl.message(
      'Choose Item',
      name: 'chooseItem',
      desc: '',
      args: [],
    );
  }

  /// `Event Items`
  String get eventItems {
    return Intl.message(
      'Event Items',
      name: 'eventItems',
      desc: '',
      args: [],
    );
  }

  /// `Battle Records`
  String get battleRecords {
    return Intl.message(
      'Battle Records',
      name: 'battleRecords',
      desc: '',
      args: [],
    );
  }

  /// `Chips`
  String get chips {
    return Intl.message(
      'Chips',
      name: 'chips',
      desc: '',
      args: [],
    );
  }

  /// `Furniture`
  String get furniture {
    return Intl.message(
      'Furniture',
      name: 'furniture',
      desc: '',
      args: [],
    );
  }

  /// `Materials`
  String get materials {
    return Intl.message(
      'Materials',
      name: 'materials',
      desc: '',
      args: [],
    );
  }

  /// `Uncategorized`
  String get uncategorized {
    return Intl.message(
      'Uncategorized',
      name: 'uncategorized',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get stats {
    return Intl.message(
      'Statistics',
      name: 'stats',
      desc: '',
      args: [],
    );
  }

  /// `stage`
  String get stage {
    return Intl.message(
      'stage',
      name: 'stage',
      desc: '',
      args: [],
    );
  }

  /// `Loots`
  String get loots {
    return Intl.message(
      'Loots',
      name: 'loots',
      desc: '',
      args: [],
    );
  }

  /// `Samples`
  String get samples {
    return Intl.message(
      'Samples',
      name: 'samples',
      desc: '',
      args: [],
    );
  }

  /// `Drop Rate`
  String get dropRate {
    return Intl.message(
      'Drop Rate',
      name: 'dropRate',
      desc: '',
      args: [],
    );
  }

  /// `Expected Sanity`
  String get expectedSanity {
    return Intl.message(
      'Expected Sanity',
      name: 'expectedSanity',
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
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}