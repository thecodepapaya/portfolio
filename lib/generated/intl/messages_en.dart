// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(greeting) => "${Intl.select(greeting, {
            'em': 'Good morning, early bird',
            'm': 'Good Morning',
            'a': 'Good Afternoon',
            'e': 'Good Evening',
            'n': 'Hi there, night owl',
            'other': 'Hello',
          })}. I\'m ";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutDesc": MessageLookupByLibrary.simpleMessage(
            "I am Ashutosh Singh, also known by the username thecodepapaya, currently pursuing my bachelor\'s degree majoring in computer science from Indian Institiute of Information Technology, Vadodara."),
        "aboutGreeting": m0,
        "blogMinutes": MessageLookupByLibrary.simpleMessage("Min"),
        "footerCredit": MessageLookupByLibrary.simpleMessage(
            "Based on designs by Nicolas Meuzard"),
        "notFoundDespise": MessageLookupByLibrary.simpleMessage(
            "Looks like you are lost ... on a single page application, duh!"),
        "notFoundHome":
            MessageLookupByLibrary.simpleMessage("Take me back to 127.0.0.1"),
        "notFoundInterjaction": MessageLookupByLibrary.simpleMessage("Oh no!"),
        "tabBlog": MessageLookupByLibrary.simpleMessage("03.  Blogs"),
        "tabExperience":
            MessageLookupByLibrary.simpleMessage("02.  Experience"),
        "tabProjects": MessageLookupByLibrary.simpleMessage("01.  Projects"),
        "title": MessageLookupByLibrary.simpleMessage("Ashutosh Singh")
      };
}
