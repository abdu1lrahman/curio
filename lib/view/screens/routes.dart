import 'package:curio/view/screens/create_account.dart';
import 'package:curio/view/screens/home.dart';
import 'package:curio/view/screens/login.dart';
import 'package:curio/view/screens/reset_password.dart';
import 'package:curio/view/screens/onboarding.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(name: '/welcome', page: () => const Onboarding()),
  GetPage(name: '/home', page: () => const Home()),
  GetPage(name: '/login', page: () => const Login()),
  GetPage(name: '/createaccount', page: () => const CreateAccount()),
  GetPage(name: '/resetpassword', page: () => const ResetPassword()),
];
