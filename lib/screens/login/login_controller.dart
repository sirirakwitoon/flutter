import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/routes.dart';
import 'package:myapp/services/user_service.dart';

class LoginController extends GetxController {
  Future<void> goToHomeScreen() async {
    UserModel userInfo = await UserService().getUser();
    Get.toNamed(Routes.home, arguments: userInfo);
  }
}
