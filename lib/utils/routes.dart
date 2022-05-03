import 'package:cpb/src/auth/views/auth_providers_screen.dart';
import 'package:cpb/src/auth/views/email_verification_screen.dart';
import 'package:cpb/src/auth/views/forgot_password_screen.dart';
import 'package:cpb/src/auth/views/login_screen.dart';
import 'package:cpb/src/auth/views/signup_screen.dart';
import 'package:cpb/src/bible/bible_detail_screen.dart';
import 'package:cpb/src/donation_screen.dart';
import 'package:cpb/src/get_started_screen.dart';
import 'package:cpb/src/library/library_screen.dart';
import 'package:cpb/src/notification/notification_screen.dart';
import 'package:cpb/src/splash_screen.dart';
import 'package:cpb/src/tab_screen.dart';
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
    name: AuthProvidersScreen.routeName,
    page: () => AuthProvidersScreen(),
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
  GetPage(
    name: DonationScreen.routeName,
    page: () => const DonationScreen(),
  ),
  GetPage(
    name: TabScreen.routeName,
    page: () => const TabScreen(),
  ),
  GetPage(
    name: LibraryScreen.routeName,
    page: () => LibraryScreen(),
  ),
  GetPage(
    name: EmailVerificationScreen.routeName,
    page: () => const EmailVerificationScreen(),
  ),
  GetPage(
    name: BibleDetailScreen.routeName,
    page: () => const BibleDetailScreen(),
  ),
  GetPage(
    name: NotificationScreen.routeName,
    page: () => const NotificationScreen(),
  ),
];
