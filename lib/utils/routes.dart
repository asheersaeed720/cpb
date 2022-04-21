import 'package:cpb/src/auth/views/forgot_password_screen.dart';
import 'package:cpb/src/auth/views/login_provider_screen.dart';
import 'package:cpb/src/auth/views/login_screen.dart';
import 'package:cpb/src/auth/views/signup_screen.dart';
import 'package:cpb/src/get_started_screen.dart';
import 'package:cpb/src/splash_screen.dart';
import 'package:cpb/src/terms_conditions_screen.dart';
import 'package:get/get.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: SplashScreen.routeName,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: GetStartedScreen.routeName,
    page: () => const GetStartedScreen(),
  ),
  GetPage(
    name: LogInProviderScreen.routeName,
    page: () => LogInProviderScreen(),
  ),
  GetPage(
    name: TermsAndConditionsScreen.routeName,
    page: () => const TermsAndConditionsScreen(),
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
