import 'package:flutter/material.dart';

class ThemaDefault {
  ThemaDefault._();
  static const MaterialColor _themeData = MaterialColor(0XFF1e2746, {
    50: Color(0XFF1b233f),
    100: Color(0XFF181f38),
    200: Color(0XFF151b31),
    300: Color(0XFF12172a),
    400: Color(0XFF0f1423),
    500: Color(0XFF0c101c),
    600: Color(0XFF090c15),
    700: Color(0XFF06080e),
    800: Color(0XFF030407),
    900: Color(0XFF000000),
  });

  static final ThemeData themeData = ThemeData(
    primaryColor: const Color(0XFF1e2746),
    primarySwatch: _themeData,
  );
}
