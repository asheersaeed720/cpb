import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFA7C957);
const iconColorLightGreen = Color(0xFFe8ffc2);
const kSecondaryColor = Color(0xFF6A994E);
const textFieldBg = Color(0xFFaff43f);

TextStyle kTitleStyle = const TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 19.0,
);

TextStyle kBodyStyle = const TextStyle(
  color: Colors.black87,
  fontWeight: FontWeight.bold,
  fontSize: 16.0,
);

Map<int, Color> color = {
  50: const Color.fromRGBO(37, 50, 65, .1),
  100: const Color.fromRGBO(37, 50, 65, .2),
  200: const Color.fromRGBO(37, 50, 65, .3),
  300: const Color.fromRGBO(37, 50, 65, .4),
  400: const Color.fromRGBO(37, 50, 65, .5),
  500: const Color.fromRGBO(37, 50, 65, .6),
  600: const Color.fromRGBO(37, 50, 65, .7),
  700: const Color.fromRGBO(37, 50, 65, .8),
  800: const Color.fromRGBO(37, 50, 65, .9),
};

MaterialColor customPrimaryColor = MaterialColor(0xFF253241, color);

dropDownDecor(String hintText) {
  return InputDecoration(
    contentPadding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
    hintText: hintText,
    border: const OutlineInputBorder(),
  );
}
