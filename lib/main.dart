import 'package:cpb/src/main_binding.dart';
import 'package:cpb/src/splash_screen.dart';
import 'package:cpb/utils/app_theme.dart';
import 'package:cpb/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'CPB',
        debugShowCheckedModeBanner: false,
        theme: lightThemeData,
        darkTheme: ThemeData.dark(),
        initialBinding: MainBinding(),
        initialRoute: SplashScreen.routeName,
        getPages: routes,
      );
}
