import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/const/color.dart';
import 'package:myapp/main.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: Container(
          width: Get.width,
          padding: EdgeInsets.only(
              top: Get.mediaQuery.padding.top,
              bottom: Get.mediaQuery.padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: Get.height * 0.1,
                    ),
                    child: buildLogo(),
                  ),
                  Container(
                    width: Get.width * 0.8,
                    height: 44,
                    margin: EdgeInsets.only(
                      top: Get.height * 0.1,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("เข้าใช้งาน",
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              Colors.yellow.shade600)),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 44),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "ต้องการความช่วยเหลือ ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "คลิก",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      width: 24,
                      child: Image.asset("assets/thai-flag.png"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Column buildLogo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Kept",
          style: TextStyle(
            fontSize: 64,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        Text(
          "by Krungsri",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

// void testFunction({String? name, int? age}) {}
