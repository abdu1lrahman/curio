import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LocaleService extends Translations {
  static final Map<String, Map<String, String>> _translations = {};

  static const List<String> supportedLanguages = ['en', 'ar', 'fr'];

  static Future<void> init() async {
    debugPrint("=======started initializing the localizations=======");
    for (final lang in supportedLanguages) {
      final jsonString = await rootBundle.loadString(
        'assets/translations/$lang.json',
      );
      final Map<String, dynamic> jsonMap = json.decode(jsonString);
      _translations[lang] = jsonMap.map(
        (key, value) => MapEntry(key, value.toString()),
      );
    }
    debugPrint("=======finished initializing the localizations=======");
  }

  @override
  Map<String, Map<String, String>> get keys => _translations;
}
