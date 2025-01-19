import 'dart:convert';

import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Ccontrollers/UserDataController.dart';
import 'package:flutterwidgethub/Models/Constants/AppConstant.dart';
import 'package:flutterwidgethub/Views/MainScreens/MainScreenWidgets/LoginWidget.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController {
  final UserController userController = Get.put(UserController());
  Future<void> SignUp(
      String email, String password, String name, BuildContext context) async {
    try {
      final response = await http.post(
        Uri.parse("${Appconstant.DomainUrl}users/create"),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': password, 'name': name}),
      );
      final responseData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.pop(context);
        print("User Signed Up");
        showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            content: LoginWidget(),
            backgroundColor: Colors.transparent,
          ),
        );
        ElegantNotification.success(
          title: const Text("Success"),
          description: const Text("User Signed Up Successfully"),
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
        print("Sign Up failed : ${response.statusCode} - ${response.body}");
      }
    } catch (e) {
      ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: Text('$e'),
          onDismiss: () {},
        ).show(context);
      print('Error during SignUp : $e');
    }
  }
}
