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

  /// `There's still lots of work that needs to be done, Doctor. You can't rest now!`
  String get splashLoadingTip {
    return Intl.message(
      'There\'s still lots of work that needs to be done, Doctor. You can\'t rest now!',
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