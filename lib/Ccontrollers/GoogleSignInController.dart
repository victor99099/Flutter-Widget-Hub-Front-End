import 'dart:convert';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterwidgethub/Views/MainScreens/mainScreen.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../Models/Constants/AppConstant.dart';
import '../Models/Entities/User.dart';
import 'UserDataController.dart';

class GoogleAuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email', 'profile'],
    clientId: kIsWeb
        ? "702353660433-n8menu8kuujiie5h9shaesc9pp8r08op.apps.googleusercontent.com"
        : null,
  );
  final UserController userController = Get.find<UserController>();

  Future<User?> initiateGoogleSignIn(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        print('User canceled the sign-in process.');
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: const Text('No Account Selected'),
          onDismiss: () {},
        ).show(context);
        return null;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final String? accessToken = googleAuth.accessToken;

      if (accessToken == null) {
        print('Error: Access Token is null. Cannot proceed without it.');
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: const Text('No Account Selected'),
          onDismiss: () {},
        ).show(context);
        return null;
      }

      return await sendTokenToBackend(accessToken, context);
    } catch (error) {
      print('$error');
      ElegantNotification.error(
        width: 360,
        position: Alignment.topRight,
        title: const Text('Error'),
        description: Text('$error'),
        onDismiss: () {},
      ).show(context);
      return null;
    }
  }

  Future<User?> sendTokenToBackend(
      String accessToken, BuildContext context) async {
    try {
      final response = await http.post(
        Uri.parse('http://${Appconstant.Domain}/users/google-signin'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'accessToken': accessToken}),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);

        if (responseData is! Map<String, dynamic> ||
            responseData['user'] == null) {
          print('Invalid response format or missing user data.');
          return null;
        }

        final userData = responseData['user'];
        final user = User.fromJson(userData);
        Get.find<UserController>().setUser(user);
        print('Google Sign-In Successful: ${responseData['message']}');
        ElegantNotification.success(
          title: const Text("Success"),
          description:
              Text("Google Sign-In Successful: ${responseData['message']}"),
          onDismiss: () {
            print('Message when the notification is dismissed');
          },
          onNotificationPressed: () {
            print('Message when the notification is pressed');
          },
          isDismissable: true,
        ).show(context);
        Get.offAll(() => const MainScreen());
        return user;
      } else {
        print(
            'Google Sign-in Failed: ${response.statusCode} - ${response.body}');
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: Text(
              'Google Sign-in Failed: ${response.statusCode} - ${response.body}'),
          onDismiss: () {},
        ).show(context);
        return null;
      }
    } catch (error) {
      print('Error sending token to backend: $error');

      return null;
    }
  }

  Future<void> logout() async {
    try {
      await _googleSignIn.signOut();
      print('User signed out from Google.');

      await http.get(Uri.parse(
          'http://${Appconstant.Domain}/users/logout?email=${userController.user.value!.email}'));

      userController.clearUser();

    } catch (error) {
      print('Error during logout: $error');
    }
  }
}
