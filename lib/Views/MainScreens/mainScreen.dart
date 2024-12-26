import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Views/MainScreens/MainScreenWidgets/leftmain.dart';
import 'package:get/get.dart';

import '../../Ccontrollers/PageController.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
      CustomPageController pageController = Get.put(CustomPageController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 28, 46),
      // appBar: AppBar(title: Text("Flutter Widget Hub"),),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/Background.jpeg", // Your background image path
              fit: BoxFit.cover,
            ),
          ),
          // Blur effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0, // Horizontal blur strength
                sigmaY: 10.0, // Vertical blur strength
              ),
              child: Container(
                color: const Color.fromARGB(255, 6, 14, 56)
                    .withOpacity(0.8), // Transparent overlay
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Flutter Widget Hub",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Divider(
                  color: Colors.white,
                  indent: 10,
                  endIndent: 10,
                  thickness: 2,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: LeftMain().paddingOnly(left: 10, top: 5),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: VerticalDivider(
                        color: Colors.white,
                        indent: 0,
                        endIndent: 0,
                        thickness: 2,
                      ),
                    ),
                    Flexible(
                      child: Obx(
                        () => Container(
                          child: pageController.screens[pageController.SelectedPage.value],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
