import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:myapp/screens/login.dart';

void main() {
  runApp(MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginScreen(),
    );
      
  }
}