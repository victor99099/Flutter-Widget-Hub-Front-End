import 'dart:convert';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutterwidgethub/Ccontrollers/UserDataController.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
import '../Models/Constants/AppConstant.dart';
import '../Models/Entities/User.dart';
import '../Views/MainScreens/mainScreen.dart';

class MicrosoftLoginController extends GetxController {
  final UserController userController = Get.put(UserController());

  Future<void> MicrosoftSignIn(BuildContext context) async {
    try {
      EasyLoading.show();
      final response = await http
          .get(Uri.parse("${Appconstant.DomainUrl}users/Microsoftlogin"));
      // .get(Uri.parse("http://localhost:3000/users/Microsoftlogin"));
      final responseData = jsonDecode(response.body);

      if (response.statusCode == 200) {
        final loginUrl = responseData['loginUrl'];

        if (await canLaunch(loginUrl)) {
          await launch(loginUrl);

          EasyLoading.dismiss();

          // Launch the Microsoft login
        } else {
          EasyLoading.dismiss();
          throw 'Could not launch $loginUrl';
        }
        EasyLoading.dismiss();
      } else {
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: Text(response.body),
          onDismiss: () {},
        ).show(context);
        EasyLoading.dismiss();
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
      EasyLoading.dismiss();
    }
  }
}

class WebSocketController extends GetxController {
  late html.WebSocket _socket;

  Future<void> connectWebSocket(BuildContext context) async {
    try {
      _socket = html.WebSocket(
          'wss://flutterhub.centralindia.cloudapp.azure.com/ws/'); // Replace with your backend URL

      print('Connecting to WebSocket...');

      // Listen for the WebSocket connection to open
      _socket.onOpen.listen((event) {
        print('WebSocket connected.');

        // Notify backend to wait for login updates
        _socket.send('waitingForLogin');
      });

      // Listen to messages from the backend
      _socket.onMessage.listen((event) {
        final data = jsonDecode(event.data);
        if (data['message'] == 'login Successful') {
          final userData = data['user'];
          final user = User.fromJson(userData);
          Get.find<UserController>().setUser(user);
          print('Microsoft Sign-In Successful: ${data['message']}');
          ElegantNotification.success(
            title: const Text("Success"),
            description:
                Text("Microsoft Sign-In Successful: ${data['message']}"),
            onDismiss: () {
              print('Message when the notification is dismissed');
            },
            onNotificationPressed: () {
              print('Message when the notification is pressed');
            },
            isDismissable: true,
          ).show(context);
          Get.offAll(() => const MainScreen());
        }
      });
    } catch (e) {
      print('Error connecting to WebSocket: $e');
    }
  }
}
