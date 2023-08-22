// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../pages/about_view.dart';
import '../pages/login_view.dart';
import '../pages/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: Routes.WELCOME,
      page: () => const WelcomeView(),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () => const AboutView(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
    ),
  ];
}
