import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:myapp/routes.dart';

class LoginController extends GetxController {
  Future<void> goToHomeScreen() async {
    Get.toNamed(Routes.home);
  }
}
