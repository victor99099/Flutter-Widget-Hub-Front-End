import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../Models/Constants/AppConstant.dart';
import '../Models/Entities/User.dart';

class UserController extends GetxController {
  var user = Rx<User?>(null);
  RxBool isLoggedIn = false.obs;
  Future<bool> checkLoginStatus() async {
    
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? email = prefs.getString('email');
    print(email);
    if (email != null) {
      
      // Call your API to check login status
      final response = await http.get(Uri.parse(
          // 'http://localhost:3000/users/check-session?email=$email'));
          '${Appconstant.DomainUrl}users/check-session?email=$email'));

      if (response.statusCode == 200) {
        EasyLoading.show();
        final data = json.decode(response.body);
        if (data['isLoggedIn']) {
          print("User logged in :${data['isLoggedIn']} ");
          user.value = User.fromJson(data['user']);
          isLoggedIn.value = true;
          EasyLoading.dismiss();
          return true;
        } else {
          print("User Not logged in :${data['isLoggedIn']} ");
          user.value = null;
          EasyLoading.dismiss();
          return false;
        }
      } else {
        final data = json.decode(response.body);
        print("Failed Response ${data['error']} ");
        user.value = null;
        EasyLoading.dismiss();
        return false;
      }
    } else {
      user.value = null;
      EasyLoading.dismiss();
      return false;
    }
  }

  void setUser(User newUser) async {
    user.value = newUser;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', newUser.email);
    isLoggedIn.value = true;
  }

  void clearUser() async {
    user.value = null;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');
    isLoggedIn.value = false;
    update();
  }
}
