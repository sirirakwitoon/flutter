import 'package:flutter/material.dart';

class AppColors {
  static Color primary = Colors.red.shade700;

  static int redDefault = 0xFFD32F2F;
  static MaterialColor red = MaterialColor(redDefault, <int, Color>{
    500: Color(redDefault),
  });
}
