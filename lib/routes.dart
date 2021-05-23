import 'package:get/route_manager.dart';
import 'package:myapp/screens/home/home.dart';
import 'package:myapp/screens/login/login.dart';
import 'package:myapp/screens/more/more.dart';
import 'package:myapp/screens/notification/notification.dart';
import 'package:myapp/screens/scan_qr/scan_qr.dart';
import 'package:myapp/screens/transfer/transfer.dart';

class Routes {
  static const login = "/login";
  static const home = "/home";
  static const transfer = "/transfer";
  static const scanQr = "/scanQr";
  static const notification = "/notification";
  static const more = "/more";

  static List<GetPage> getPages() {
    return [
      GetPage(name: login, page: () => LoginScreen()),
      GetPage(name: home, page: () => HomeScreen()),
      GetPage(name: transfer, page: () => TransferScreen()),
      GetPage(name: scanQr, page: () => ScanQRScreen()),
      GetPage(name: notification, page: () => NotificationScreen()),
      GetPage(name: more, page: () => MoreScreen()),
    ];
  }
}
