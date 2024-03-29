import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';

final lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: kPrimaryColor,
  // primarySwatch: customPrimaryColor,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.black87,
      fontSize: 15.0,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
    ),
    elevation: 0,
    backgroundColor: Colors.white,
  ),
  iconTheme: const IconThemeData(color: Colors.black87),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: textFieldBg,
    filled: true,
  ),
  errorColor: Colors.red[800],
  visualDensity: VisualDensity.adaptivePlatformDensity,
  fontFamily: 'Poppins',
);
