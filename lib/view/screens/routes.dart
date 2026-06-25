import 'package:curio/view/screens/create_account.dart';
import 'package:curio/view/screens/home.dart';
import 'package:curio/view/screens/login.dart';
import 'package:curio/view/screens/reset_password.dart';
import 'package:curio/view/screens/onboarding.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(name: '/welcome', page: () => Onboarding()),
  GetPage(name: '/home', page: () => Home()),
  GetPage(name: '/login', page: () => Login()),
  GetPage(name: '/createaccount', page: () => CreateAccount()),
  GetPage(name: '/resetpassword', page: () => ResetPassword()),
];
