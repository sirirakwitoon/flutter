import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/const/color.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Stack(
          children: [buildTopbar()],
        ),
      ),
    );
  }

  Widget buildTopbar() {
    return Container(
      padding: EdgeInsets.only(top: Get.mediaQuery.padding.top),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildImageProfile(),
              buildActionButton(),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildGreetingMessage(),
              buildKeptMission(),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            width: Get.width,
            height: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color(0xFFD12531),
            ),
          )
        ],
      ),
    );
  }

  Text buildGreetingMessage() {
    return Text(
      "Hi Aphirat",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget buildActionButton() {
    return Row(
      children: [
        Icon(
          Icons.chat_bubble_outline,
          color: Colors.white,
          size: 32,
        ),
        SizedBox(width: 8),
        Icon(
          Icons.power_settings_new,
          color: Colors.white,
          size: 32,
        ),
      ],
    );
  }

  Widget buildImageProfile() {
    final imageWidth = 72.0;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(imageWidth),
        color: Colors.white,
      ),
      width: imageWidth,
      height: imageWidth,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(imageWidth),
        child: Image.asset(
          "assets/profile.jpeg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget buildKeptMission() {
    return Row(children: [
      Text(
        "Kept mission",
        style: TextStyle(
          color: AppColors.secondary,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 8),
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey.shade600,
        ),
      )
    ]);
  }
}
