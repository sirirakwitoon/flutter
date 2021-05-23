import 'package:flutter/material.dart';

class AppColors {
  static int redDefault = 0xFFD32F2F;
  static Color primary = Color(redDefault);
  static MaterialColor red = MaterialColor(redDefault, <int, Color>{
    500: Color(redDefault),
  });
}
