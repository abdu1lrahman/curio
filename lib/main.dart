import 'package:curio/controller/UI/page_indicator_controller.dart';
import 'package:curio/model/locale/locale.dart';
import 'package:curio/model/locale/locale_controller.dart';
import 'package:curio/model/services/storage.dart';
import 'package:curio/view/screens/onboarding.dart';
import 'package:curio/view/screens/routes.dart';
import 'package:curio/view/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await StorageService.init();
  await LocaleService.init();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(Curio());
}

class Curio extends StatelessWidget {
  const Curio({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LocaleController());
    Get.put(PageIndicatorController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'curio',
      initialRoute: '/',
      getPages: routes,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      locale: Get.deviceLocale,
      translations: LocaleService(),
      home: Onboarding(),
    );
  }
}
