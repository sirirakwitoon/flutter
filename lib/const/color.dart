import 'package:flutter/material.dart';

class AppColors {
  static int redDefault = 0xFFBA2231;
  static Color primary = Color(redDefault);
  static Color secondary = Color(0xFFFACD01);
  static MaterialColor red = MaterialColor(redDefault, <int, Color>{
    500: Color(redDefault),
  });
}
