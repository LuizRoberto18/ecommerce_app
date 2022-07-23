import 'package:shared_preferences/shared_preferences.dart';

import 'models/user.dart';

class SharedInfo {
  late SharedPreferences sharedPreferences;

  //save info logged in to shared preferences
  void sharedLoginSave(User userModel) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt("idUser", userModel.id!);
    sharedPreferences.setString("userName", userModel.userName!);
  }
}
