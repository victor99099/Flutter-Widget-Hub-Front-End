import 'dart:convert';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Ccontrollers/UserDataController.dart';
import 'package:flutterwidgethub/Models/Constants/AppConstant.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class MicrosoftLoginController extends GetxController {
  final UserController userController = Get.put(UserController());
  Future<void> MicrosoftSignIn(BuildContext context) async {
    try {
      final response = await http
          .get(Uri.parse("http://${Appconstant.Domain}/users/Microsoftlogin"));
      final responseData = jsonDecode(response.body);

      if (response.statusCode == 200) {
        final loginUrl = responseData['loginUrl'];
        if (await canLaunch(loginUrl)) {
          await launch(loginUrl); // Launch the Microsoft login
        } else {
          throw 'Could not launch $loginUrl';
        }
      } else {
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: Text(response.body),
          onDismiss: () {},
        ).show(context);
      }
    } catch (e) {
      ElegantNotification.error(
        width: 360,
        position: Alignment.topRight,
        title: const Text('Error'),
        description: Text('$e'),
        onDismiss: () {},
      ).show(context);
      print('Error during login: ${e.toString()}');
    }
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
