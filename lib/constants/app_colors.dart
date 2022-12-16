import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFF005696);
  Map<int, Color> color = {
    50: Color.fromRGBO(0, 86, 150, .1),
    100: Color.fromRGBO(0, 86, 150, .2),
    200: Color.fromRGBO(0, 86, 150, .3),
    300: Color.fromRGBO(0, 86, 150, .4),
    400: Color.fromRGBO(0, 86, 150, .5),
    500: Color.fromRGBO(0, 86, 150, .6),
    600: Color.fromRGBO(0, 86, 150, .7),
    700: Color.fromRGBO(0, 86, 150, .8),
    800: Color.fromRGBO(0, 86, 150, .9),
    900: Color.fromRGBO(0, 86, 150, 1),
  };
  customMaterialColor() {
    return MaterialColor(0xFF005696, color);
  }
}
