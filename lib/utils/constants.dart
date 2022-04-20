import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFD22027);
const kSecondaryColor = Color(0xFF253241);

const Color textFieldColor = Color.fromARGB(255, 238, 236, 237);

TextStyle kTitleStyle = const TextStyle(
  color: kSecondaryColor,
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
