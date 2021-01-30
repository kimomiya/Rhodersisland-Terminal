// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "amiyaAttention" : MessageLookupByLibrary.simpleMessage("There\'s still lots of work that needs to be done, Doctor. You can\'t rest now!"),
    "appTitle" : MessageLookupByLibrary.simpleMessage("Rhodes Island Terminal"),
    "connecting" : MessageLookupByLibrary.simpleMessage("Connecting to the neural network of Rhodes Island"),
    "items" : MessageLookupByLibrary.simpleMessage("Choose Item"),
    "lang" : MessageLookupByLibrary.simpleMessage("English"),
    "networkUnreachable" : MessageLookupByLibrary.simpleMessage("Network is unreachable. Please try again later."),
    "recruit" : MessageLookupByLibrary.simpleMessage("Recruit"),
    "remoteServerError" : MessageLookupByLibrary.simpleMessage("Unable to connect to the remote server. Please try again later."),
    "splash" : MessageLookupByLibrary.simpleMessage("Splash")
  };
}
