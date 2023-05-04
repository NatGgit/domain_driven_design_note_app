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

  /// `Let's start adding some notes!`
  String get lets_start {
    return Intl.message(
      'Let\'s start adding some notes!',
      name: 'lets_start',
      desc: '',
      args: [],
    );
  }

  /// `Note app`
  String get note_app {
    return Intl.message(
      'Note app',
      name: 'note_app',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get email {
    return Intl.message(
      'email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get google_sign_in {
    return Intl.message(
      'Sign in with Google',
      name: 'google_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `delete`
  String get delete {
    return Intl.message(
      'delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this note?`
  String get are_you_sure_to_delete {
    return Intl.message(
      'Are you sure you want to delete this note?',
      name: 'are_you_sure_to_delete',
      desc: '',
      args: [],
    );
  }

  /// `Add a todo`
  String get add_todo {
    return Intl.message(
      'Add a todo',
      name: 'add_todo',
      desc: '',
      args: [],
    );
  }

  /// `Todos number limit reached`
  String get todos_limit_reached {
    return Intl.message(
      'Todos number limit reached',
      name: 'todos_limit_reached',
      desc: '',
      args: [],
    );
  }

  /// `Edit the note`
  String get edit_note {
    return Intl.message(
      'Edit the note',
      name: 'edit_note',
      desc: '',
      args: [],
    );
  }

  /// `Add a note`
  String get add_note {
    return Intl.message(
      'Add a note',
      name: 'add_note',
      desc: '',
      args: [],
    );
  }

  /// `Select a color`
  String get select_color {
    return Intl.message(
      'Select a color',
      name: 'select_color',
      desc: '',
      args: [],
    );
  }

  /// `note text`
  String get note_text {
    return Intl.message(
      'note text',
      name: 'note_text',
      desc: '',
      args: [],
    );
  }

  /// `Please enter note text`
  String get enter_note_text {
    return Intl.message(
      'Please enter note text',
      name: 'enter_note_text',
      desc: '',
      args: [],
    );
  }

  /// `title`
  String get title {
    return Intl.message(
      'title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `What do you want to do?`
  String get what_to_do {
    return Intl.message(
      'What do you want to do?',
      name: 'what_to_do',
      desc: '',
      args: [],
    );
  }

  /// `todo name cannot be empty`
  String get todo_name_cannot_be_empty {
    return Intl.message(
      'todo name cannot be empty',
      name: 'todo_name_cannot_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `your notes`
  String get your_notes {
    return Intl.message(
      'your notes',
      name: 'your_notes',
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
      Locale.fromSubtags(languageCode: 'pl'),
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
