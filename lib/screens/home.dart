import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/logo.dart';
import 'package:myapp/const/color.dart';
import 'package:myapp/models/user_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late UserModel userInfo;

  @override
  void initState() {
    userInfo = Get.arguments;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,
      body: Container(
        width: Get.width,
        padding: EdgeInsets.only(
            top: Get.mediaQuery.padding.top,
            bottom: Get.mediaQuery.padding.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              Container(
                margin: EdgeInsets.only(
                  top: Get.height * 0.1,
                ),
                child: Logo(),
              ),
              Container(
                margin: EdgeInsets.only(top: 64),
                width: Get.width * 0.6,
                child: Text(
                  "สวัสดีคุณ ${userInfo.fname} ${userInfo.lname} ",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
