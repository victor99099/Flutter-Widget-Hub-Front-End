// import 'dart:convert';

// import 'package:flutterwidgethub/Ccontrollers/UserDataController.dart';
// import 'package:flutterwidgethub/Models/Constants/AppConstant.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

// import '../Models/Entities/User.dart';

// class Sessioncontroller extends GetxController {
//   RxBool isLoggedIn = false.obs;
//   UserController userController = Get.put(UserController());

//   Future<void> CheckSession() async {
//     try {
//       final response = await http.get(
//         Uri.parse("http://${Appconstant.Domain}/users/check-session"),
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         },
//       );
//       final responseData = jsonDecode(response.body);
//       if (responseData["isloggedIn"]) {
//         userController.setUser(User.fromJson(responseData["user"]));
//         isLoggedIn.value = true;
//       } else {
//         isLoggedIn.value = false;
//       }
//     } catch (e) {
//       print("Error on check session : ${e}");
//     }
//   }
// }
