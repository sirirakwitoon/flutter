import 'package:get/route_manager.dart';
import 'package:myapp/screens/home.dart';
import 'package:myapp/screens/login/login.dart';

class Routes {
  static const login = "/login";
  static const home = "/home";

  static List<GetPage> getPages() {
    return [
      GetPage(name: home, page: () => HomeScreen()),
      GetPage(name: login, page: () => LoginScreen())
    ];
  }
}
