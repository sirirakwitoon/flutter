import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:myapp/models/navigation_bar_model.dart';

class BottomBarView {
  jumpToPage(int pageIndex) {}
}

class BottomNavController extends GetxController {
  List<NavigationBarModel> navigationBarList = [
    NavigationBarModel(icon: Icon(Icons.web_asset), label: "Dashboard"),
    NavigationBarModel(icon: Icon(Icons.swap_horiz), label: "Transfer"),
    NavigationBarModel(icon: Icon(Icons.camera), label: "Scan QR"),
    NavigationBarModel(icon: Icon(Icons.notifications), label: "Notification"),
    NavigationBarModel(icon: Icon(Icons.more_horiz), label: "More"),
  ];

  late BottomBarView view;
  RxInt currentIndexSelected = 0.obs;

  BottomNavController(this.view) {}

  handleNavigate(int currentIndex) {
    currentIndexSelected.value = currentIndex;
    view.jumpToPage(currentIndex);
  }
}
