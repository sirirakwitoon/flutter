import 'package:myapp/models/user_model.dart';

class UserService {
  Future<UserModel> getUser() async {
    return Future.delayed(Duration(milliseconds: 500), () {
      return UserModel(fname: "Aphirat", lname: "Nimanussonkul");
    });
  }
}
