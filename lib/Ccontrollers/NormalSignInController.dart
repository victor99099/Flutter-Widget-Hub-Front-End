import 'dart:convert';

import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Ccontrollers/UserDataController.dart';
import 'package:flutterwidgethub/Models/Constants/AppConstant.dart';
import 'package:flutterwidgethub/Models/Entities/User.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NormalSignInController extends GetxController {
  final UserController userController = Get.put(UserController());
  // final Sessioncontroller sessioncontroller = Get.put(Sessioncontroller());
  Future<void> normalSignIn(
      String email, String password, BuildContext context) async {
    try {
      final response = await http.post(
        Uri.parse("http://${Appconstant.Domain}/users/signin"),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': password}),
      );
      final responseData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        final userData = responseData['user'];
        User loggedInUser = User.fromJson(userData);
        userController.setUser(loggedInUser);
        print(userController.user.value);
        print("User logged in");
        // await sessioncontroller.CheckSession();
        Navigator.pop(context);
        ElegantNotification.success(
          title: const Text("Success"),
          description: const Text("User Signed In Successfully"),
          onDismiss: () {
            print('Message when the notification is dismissed');
          },
          onNotificationPressed: () {
            print('Message when the notification is pressed');
          },
          isDismissable: true,
        ).show(context);
      } else {
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: Text('${responseData["error"]}'),
          onDismiss: () {},
        ).show(context);
        print("login failed : ${response.statusCode} - ${response.body}");
      }
    } catch (e) {
      ElegantNotification.error(
        width: 360,
        position: Alignment.topRight,
        title: const Text('Error'),
        description: Text('$e'),
        onDismiss: () {},
      ).show(context);
      print('Error during login : $e');
    }
  }
}
