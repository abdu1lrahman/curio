import 'package:curio/model/locale/locale.dart';
import 'package:curio/model/locale/locale_controller.dart';
import 'package:curio/model/services/storage.dart';
import 'package:curio/view/screens/onboarding.dart';
import 'package:curio/view/screens/routes.dart';
import 'package:curio/view/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageService.init();
  await LocaleService.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LocaleController());
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
