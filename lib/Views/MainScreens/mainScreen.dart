import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Views/MainScreens/MainScreenWidgets/leftmain.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../Ccontrollers/PageController.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isMenuOpen = false; // State to track menu visibility

  @override
  Widget build(BuildContext context) {
    CustomPageController pageController = Get.put(CustomPageController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 28, 46),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: double.infinity,
                // height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  spacing: 5,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10,left: 10),
                      child: Image.asset("assets/shortLogoWhite.png",fit: BoxFit.contain,width: 80,height: 50,)),
                    Text(
                      "Flutter Widget Hub",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Opacity(
                opacity: 0.5,
                child: Divider(
                  color: Colors.white,
                  indent: 10,
                  endIndent: 10,
                  thickness: 2,
                ),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    bool isCompact = constraints.maxWidth < 1200;

                    return Row(
                      children: [
                        // Menu Drawer or LeftMain
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.fastOutSlowIn,
                          width: isCompact
                              ? (isMenuOpen
                                  ? MediaQuery.of(context).size.width * 0.25
                                  : 0)
                              : MediaQuery.of(context).size.width * 0.25,
                          child:  isCompact
                              ? (isMenuOpen? LeftMain() : null)
                              : LeftMain(),
                        ),
                        if (isCompact && !isMenuOpen)
                          InkWell(
                            onTap: () {
                              setState(() {
                                isMenuOpen = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 25, 56, 99)
                                    .withOpacity(0.5),
                              ),
                              width: MediaQuery.of(context).size.width * 0.03,
                              height: double.infinity,
                              child: Center(
                                child: Icon(
                                  Ionicons.caret_forward,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                        if (isCompact && isMenuOpen)
                          InkWell(
                            onTap: () {
                              setState(() {
                                isMenuOpen = false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 25, 56, 99)
                                    .withOpacity(0.5),
                              ),
                              width: MediaQuery.of(context).size.width * 0.03,
                              height: double.infinity,
                              child: Center(
                                child: Icon(
                                  Ionicons.caret_back,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                          ),
                        const Opacity(
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
                              child: pageController
                                  .screens[pageController.SelectedPage.value],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
