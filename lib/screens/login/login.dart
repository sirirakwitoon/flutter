import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/logo.dart';
import 'package:myapp/const/color.dart';
import 'package:myapp/screens/login/login_controller.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

enum Language { th, en }

class _LoginScreenState extends State<LoginScreen> {
  Language languageSelected = Language.th;

  LoginController loginController = LoginController();

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
                    child: Logo(),
                  ),
                  Container(
                    width: Get.width * 0.8,
                    height: 44,
                    margin: EdgeInsets.only(
                      top: Get.height * 0.1,
                    ),
                    child: ElevatedButton(
                      onPressed: () => loginController.goToHomeScreen(),
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
                    GestureDetector(
                      onTap: () {
                        Get.defaultDialog(
                            title: "เลือกภาษา",
                            content: Container(
                              width: Get.width * 0.7,
                              child: Column(
                                children: [
                                  buildLanguageMenu(
                                      language: Language.th,
                                      label: "ภาษาไทย",
                                      languageSelected: languageSelected),
                                  buildLanguageMenu(
                                      language: Language.en,
                                      label: "ภาษาอังกฤษ",
                                      languageSelected: languageSelected),
                                ],
                              ),
                            ));
                      },
                      child: Image.asset(
                        getCurrentFlag(languageSelected),
                        width: 24,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget buildLanguageMenu(
      {required Language language,
      required String label,
      required Language languageSelected}) {
    return ListTile(
      onTap: () {
        setState(() {
          this.languageSelected = language;
        });
        Get.back();
      },
      leading: Image.asset(
        getCurrentFlag(language),
        width: 24,
      ),
      title: Text(label),
      trailing: languageSelected == language
          ? Icon(
              Icons.check,
              color: AppColors.primary,
            )
          : Container(
              width: 1,
              height: 1,
            ),
    );
  }

  String getCurrentFlag(Language language) {
    return language == Language.th
        ? "assets/thai-flag.png"
        : "assets/eng-flag.png";
  }
}

// void testFunction({String? name, int? age}) {}
