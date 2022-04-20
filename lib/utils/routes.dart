import 'package:cpb/src/auth/views/forgot_password_screen.dart';
import 'package:cpb/src/auth/views/login_screen.dart';
import 'package:cpb/src/auth/views/signup_screen.dart';
import 'package:cpb/src/splash_screen.dart';
import 'package:get/get.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: SplashScreen.routeName,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: LogInScreen.routeName,
    page: () => LogInScreen(),
  ),
  GetPage(
    name: SignUpScreen.routeName,
    page: () => SignUpScreen(),
  ),
  GetPage(
    name: ForgotPasswordScreen.routeName,
    page: () => ForgotPasswordScreen(),
  ),
];
