// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_note": MessageLookupByLibrary.simpleMessage("Add a note"),
        "add_todo": MessageLookupByLibrary.simpleMessage("Add a todo"),
        "are_you_sure_to_delete": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this note?"),
        "delete": MessageLookupByLibrary.simpleMessage("delete"),
        "edit_note": MessageLookupByLibrary.simpleMessage("Edit the note"),
        "email": MessageLookupByLibrary.simpleMessage("email"),
        "enter_note_text":
            MessageLookupByLibrary.simpleMessage("Please enter note text"),
        "google_sign_in":
            MessageLookupByLibrary.simpleMessage("Sign in with Google"),
        "lets_start": MessageLookupByLibrary.simpleMessage(
            "Let\'s start adding some notes!"),
        "note_app": MessageLookupByLibrary.simpleMessage("Note app"),
        "note_text": MessageLookupByLibrary.simpleMessage("note text"),
        "password": MessageLookupByLibrary.simpleMessage("password"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "select_color": MessageLookupByLibrary.simpleMessage("Select a color"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Sign in"),
        "title": MessageLookupByLibrary.simpleMessage("title"),
        "todo_name_cannot_be_empty":
            MessageLookupByLibrary.simpleMessage("todo name cannot be empty"),
        "todos_limit_reached":
            MessageLookupByLibrary.simpleMessage("Todos number limit reached"),
        "what_to_do":
            MessageLookupByLibrary.simpleMessage("What do you want to do?"),
        "your_notes": MessageLookupByLibrary.simpleMessage("your notes")
      };
}
