import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Ccontrollers/GoogleSignInController.dart';
import 'package:flutterwidgethub/Ccontrollers/HelpController.dart';
import 'package:flutterwidgethub/Ccontrollers/UserDataController.dart';
import 'package:flutterwidgethub/Views/MainScreens/MainScreenWidgets/LoginWidget.dart';
import 'package:flutterwidgethub/Views/MainScreens/MainScreenWidgets/leftmain.dart';
import 'package:flutterwidgethub/Views/ProjectScreens/ProjectsMainScreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import '../../Ccontrollers/MicrosoftLoginController.dart';
import '../../Ccontrollers/PageController.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isMenuOpen = false; // State to track menu visibility
  UserController userController = Get.put(UserController());
  // Sessioncontroller sessioncontroller = Get.put(Sessioncontroller());
  WebSocketController webSocketController = Get.put(WebSocketController());
  GoogleAuthService googleAuthService = GoogleAuthService();

  @override
  void initState() {
    super.initState();
    _initializeLoginStatus();
  }

  void _initializeLoginStatus() async {
    userController.isLoggedIn.value = await userController.checkLoginStatus();
    await webSocketController.connectWebSocket(context);
    setState(() {}); // Update the UI after retrieving the login status
  }

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
                child: Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 5,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Image.asset(
                                "assets/shortLogoWhite.png",
                                fit: BoxFit.contain,
                                width: 80,
                                height: 50,
                              )),
                          const Text(
                            "Flutter Widget Hub",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      !userController.isLoggedIn.value
                          ? InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => const AlertDialog(
                                    content: LoginWidget(),
                                    backgroundColor: Colors.transparent,
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 25, right: 25, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 3, 14, 24)),
                                ),
                              ).paddingOnly(right: 20),
                            )
                          : Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(() => const ProjectsScreen());
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 25,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Text(
                                      "Projects",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 3, 14, 24)),
                                    ),
                                  ).paddingOnly(right: 20),
                                ),
                                PopupMenuButton<String>(
                                  position: PopupMenuPosition.under,
                                  color: const Color.fromARGB(255, 3, 14, 24),
                                  onSelected: (String value) async {
                                    if (value == "Item 1") {
                                      askQuestionOnWhatsapp();
                                    } else {
                                      await googleAuthService.logout();
                                    }
                                  },
                                  icon: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Text(
                                      userController.user.value?.name
                                                  .isNotEmpty ==
                                              true
                                          ? userController.user.value!.name[0]
                                              .toUpperCase()
                                          : 'U',
                                      style: const TextStyle(
                                          color: Color.fromARGB(255, 3, 14, 24),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  itemBuilder: (BuildContext context) {
                                    return [
                                      PopupMenuItem<String>(
                                        value: 'Item 1',
                                        child: Row(
                                          spacing: 5,
                                          children: [
                                            Icon(
                                              Icons.support_agent,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'Help',
                                              style: GoogleFonts.openSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      PopupMenuItem<String>(
                                        value: 'Item 2',
                                        child: Row(
                                          spacing: 5,
                                          children: [
                                            Icon(
                                              Icons.logout_outlined,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'Log Out',
                                              style: GoogleFonts.openSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ];
                                  },
                                )
                              ],
                            )
                    ],
                  );
                }),
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

                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
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
                            child: isCompact
                                ? (isMenuOpen ? const LeftMain() : null)
                                : const LeftMain(),
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
                                child: const Center(
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
                                child: const Center(
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
                      ),
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
