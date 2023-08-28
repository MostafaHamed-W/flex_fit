// ignore_for_file: constant_identifier_names

import 'package:flex_fit/pages/forget_password_view.dart';
import 'package:flex_fit/pages/home_view.dart';
import 'package:flex_fit/pages/register_view.dart';
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
    GetPage(
      name: Routes.FORGETPASSWORD,
      page: () => const ForgetPasswordView(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterView(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
    )
  ];
}
