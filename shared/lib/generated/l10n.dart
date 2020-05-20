// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S();
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S();
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get needLogin {
    return Intl.message(
      'NeedLogin',
      name: 'needLogin',
      desc: '',
      args: [],
    );
  }

  String get actionConfirm {
    return Intl.message(
      'Confirm',
      name: 'actionConfirm',
      desc: '',
      args: [],
    );
  }

  String get actionCancel {
    return Intl.message(
      'Cancel',
      name: 'actionCancel',
      desc: '',
      args: [],
    );
  }

  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  String get fieldNotNull {
    return Intl.message(
      'Not empty',
      name: 'fieldNotNull',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageError {
    return Intl.message(
      'Load Failed',
      name: 'viewStateMessageError',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageNetworkError {
    return Intl.message(
      'Load Failed,Check network ',
      name: 'viewStateMessageNetworkError',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageEmpty {
    return Intl.message(
      'Nothing Found',
      name: 'viewStateMessageEmpty',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageUnAuth {
    return Intl.message(
      'Not sign in yet',
      name: 'viewStateMessageUnAuth',
      desc: '',
      args: [],
    );
  }

  String get viewStateButtonRefresh {
    return Intl.message(
      'Refresh',
      name: 'viewStateButtonRefresh',
      desc: '',
      args: [],
    );
  }

  String get viewStateButtonRetry {
    return Intl.message(
      'Retry',
      name: 'viewStateButtonRetry',
      desc: '',
      args: [],
    );
  }

  String get viewStateButtonLogin {
    return Intl.message(
      'Sign In',
      name: 'viewStateButtonLogin',
      desc: '',
      args: [],
    );
  }

  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  String get orLoginWith {
    return Intl.message(
      'Or log in with',
      name: 'orLoginWith',
      desc: '',
      args: [],
    );
  }

  String get login_content1 {
    return Intl.message(
      'Do not have an account? So let\'s ',
      name: 'login_content1',
      desc: '',
      args: [],
    );
  }

  String get login_content2 {
    return Intl.message(
      ' right away',
      name: 'login_content2',
      desc: '',
      args: [],
    );
  }

  String get login_title {
    return Intl.message(
      'Username',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  String get login_email {
    return Intl.message(
      'Email',
      name: 'login_email',
      desc: '',
      args: [],
    );
  }

  String get login_username {
    return Intl.message(
      'Username',
      name: 'login_username',
      desc: '',
      args: [],
    );
  }

  String get login_password {
    return Intl.message(
      'Password',
      name: 'login_password',
      desc: '',
      args: [],
    );
  }

  String get login_confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'login_confirm_password',
      desc: '',
      args: [],
    );
  }

  String get login_address {
    return Intl.message(
      'Address',
      name: 'login_address',
      desc: '',
      args: [],
    );
  }

  String get login_phone {
    return Intl.message(
      'Phone',
      name: 'login_phone',
      desc: '',
      args: [],
    );
  }

  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

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