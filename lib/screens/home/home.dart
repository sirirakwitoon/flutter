import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/const/color.dart';
import 'package:myapp/screens/dashboard/dashboard.dart';
import 'package:myapp/screens/home/bottom_nav_controller.dart';
import 'package:myapp/screens/more/more.dart';
import 'package:myapp/screens/notification/notification.dart';
import 'package:myapp/screens/scan_qr/scan_qr.dart';
import 'package:myapp/screens/transfer/transfer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> implements BottomBarView {
  PageController? pageController;
  late BottomNavController bottomNavController;

  @override
  void initState() {
    pageController = PageController(keepPage: false);
    bottomNavController = BottomNavController(this);
    super.initState();
  }

  @override
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,
      body: Container(
        child: PageView(
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            DashboardScreen(),
            TransferScreen(),
            ScanQRScreen(),
            NotificationScreen(),
            MoreScreen()
          ],
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: bottomNavController.currentIndexSelected.value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primary,
            selectedLabelStyle: TextStyle(color: AppColors.primary),
            items: [
              ...bottomNavController.navigationBarList
                  .map(
                    (e) =>
                        BottomNavigationBarItem(icon: e.icon, label: e.label),
                  )
                  .toList()
            ],
            onTap: (index) => bottomNavController.handleNavigate(index),
          )),
    );
  }

  @override
  jumpToPage(int pageIndex) {
    if (pageController!.hasClients) pageController!.jumpToPage(pageIndex);
  }
}
