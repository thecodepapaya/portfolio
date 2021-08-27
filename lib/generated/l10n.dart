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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Looks like you are lost`
  String get NotFound404 {
    return Intl.message(
      'Looks like you are lost',
      name: 'NotFound404',
      desc: '',
      args: [],
    );
  }

  /// `I’m a Staff Software Engineer currently working as Tech Lead of the Doc Squad at Algolia. I mostly do front-end development, and I’m a Vue.js and CSS nerd. I can't shut up about test-driven development and utility-first CSS. I also host the Developer Experience podcast, and share what I learn on my blog frontstuff.io, or at meetups and conferences.`
  String get aboutDesc {
    return Intl.message(
      'I’m a Staff Software Engineer currently working as Tech Lead of the Doc Squad at Algolia. I mostly do front-end development, and I’m a Vue.js and CSS nerd. I can\'t shut up about test-driven development and utility-first CSS. I also host the Developer Experience podcast, and share what I learn on my blog frontstuff.io, or at meetups and conferences.',
      name: 'aboutDesc',
      desc: '',
      args: [],
    );
  }

  /// `I'm`
  String get greeting {
    return Intl.message(
      'I\'m',
      name: 'greeting',
      desc: '',
      args: [],
    );
  }

  /// `c Designed and created by Ashutosh Singh`
  String get leftSider {
    return Intl.message(
      'c Designed and created by Ashutosh Singh',
      name: 'leftSider',
      desc: '',
      args: [],
    );
  }

  /// `Projects`
  String get projects {
    return Intl.message(
      'Projects',
      name: 'projects',
      desc: '',
      args: [],
    );
  }

  /// `Made with love and Flutter`
  String get rightSider {
    return Intl.message(
      'Made with love and Flutter',
      name: 'rightSider',
      desc: '',
      args: [],
    );
  }

  /// `Ashutosh Singh`
  String get title {
    return Intl.message(
      'Ashutosh Singh',
      name: 'title',
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
