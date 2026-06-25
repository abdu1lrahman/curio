import 'dart:ui';

import 'package:get/get.dart';

class LocaleController extends GetxController {
  

  void changeLanguage(String languageCode) {
    Locale locale = Locale(languageCode);
    Get.updateLocale(locale);
  }
}
