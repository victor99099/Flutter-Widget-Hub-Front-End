import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:pandabar/pandabar.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({super.key});

  final List<Map<String, String>> navigationBarProperties = [
    {
      "Property": "animationDuration",
      "Possible Values": "Duration?",
      "Description": "Duration of the navigation bar's animation."
    },
    {
      "Property": "selectedIndex",
      "Possible Values": "int",
      "Description": "Index of the currently selected navigation item."
    },
    {
      "Property": "destinations",
      "Possible Values": "required List<Widget>",
      "Description": "The list of widgets representing navigation items."
    },
    {
      "Property": "onDestinationSelected",
      "Possible Values": "void Function(int)?",
      "Description":
          "Callback function triggered when a navigation item is selected."
    },
    {
      "Property": "backgroundColor",
      "Possible Values": "Color?",
      "Description": "Background color of the navigation bar."
    },
    {
      "Property": "elevation",
      "Possible Values": "double?",
      "Description": "Elevation of the navigation bar's shadow."
    },
    {
      "Property": "shadowColor",
      "Possible Values": "Color?",
      "Description": "Color of the shadow under the navigation bar."
    },
    {
      "Property": "surfaceTintColor",
      "Possible Values": "Color?",
      "Description": "Tint color applied to the navigation bar's surface."
    },
    {
      "Property": "indicatorColor",
      "Possible Values": "Color?",
      "Description": "Color of the selected navigation item's indicator."
    },
    {
      "Property": "indicatorShape",
      "Possible Values": "ShapeBorder?",
      "Description": "Shape of the selected item's indicator."
    },
    {
      "Property": "height",
      "Possible Values": "double?",
      "Description": "Height of the navigation bar."
    },
    {
      "Property": "labelBehavior",
      "Possible Values": "NavigationDestinationLabelBehavior?",
      "Description": "Defines the behavior of labels in the navigation bar."
    },
    {
      "Property": "overlayColor",
      "Possible Values": "WidgetStateProperty<Color?>?",
      "Description": "Color overlay applied when an item is pressed or hovered."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, top: 15, right: 30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Navigation Bar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "The Navigation Bar widget provides a bottom or side navigation interface, commonly used to navigate between different sections or views in an app. Widgets like BottomNavigationBar or NavigationRail are used to achieve this functionality.",
                style: TextStyle(
                  color: Color(0xFFF0F0F0),
                  fontSize: 17,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "1 - Built-in widget",
                style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 0,
                        borderRadius: BorderRadius.circular(10),
                        child: TabBar(
                          labelStyle: const TextStyle(
                              letterSpacing: 1.5, fontWeight: FontWeight.w500),
                          padding: const EdgeInsets.only(top: 10),
                          labelPadding: const EdgeInsets.all(5),
                          indicatorPadding: const EdgeInsets.all(0),
                          dividerHeight: 0,
                          tabs: const [
                            Padding(
                                padding: EdgeInsets.only(left: 40, right: 40),
                                child: Tab(text: 'Modern Style')),
                            Padding(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: Tab(text: 'Classic Style'),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 40, right: 40),
                                child: Tab(text: 'Elegant Style')),
                          ],
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.2),
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.58,
                        child: TabBarView(
                          children: [
                            CodeAndPreview(
                                code: '''
class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  final List<Widget> screens = [
    const Center(child: Text("Home Screen")),
    const Center(child: Text("Store Screen")),
    const Center(child: Text("Wishlist Screen")),
    const Center(child: Text("Profile Screen")),
  ];
}

class ModernNavigationBarWidget extends StatelessWidget {
  const ModernNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(() => controller.screens[controller.selectedIndex.value]),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
                color: Colors.white,
              ),
              child: Obx(
                () => NavigationBar(
                  indicatorColor: Colors.blue,
                  height: 60,
                  elevation: 0,
                  selectedIndex: controller.selectedIndex.value,
                  onDestinationSelected: (index) =>
                      controller.selectedIndex.value = index,
                  destinations: const [
                    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                    NavigationDestination(icon: Icon(Icons.store), label: 'Store'),
                    NavigationDestination(icon: Icon(Icons.favorite), label: 'Wishlist'),
                    NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                  ],
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
''',
                                swidget: NavigationMenu(
                                    borderRadius: ModernStyles.borderRadius,
                                    activeColor: ModernStyles.activeColor)),
                            CodeAndPreview(
                                code: '''
class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  final List<Widget> screens = [
    const Center(child: Text("Home Screen")),
    const Center(child: Text("Store Screen")),
    const Center(child: Text("Wishlist Screen")),
    const Center(child: Text("Profile Screen")),
  ];
}

class ClassicNavigationBarWidget extends StatelessWidget {
  const ClassicNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(() => controller.screens[controller.selectedIndex.value]),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(4)),
                color: Colors.white,
              ),
              child: Obx(
                () => NavigationBar(
                  indicatorColor: Colors.brown,
                  height: 60,
                  elevation: 0,
                  selectedIndex: controller.selectedIndex.value,
                  onDestinationSelected: (index) =>
                      controller.selectedIndex.value = index,
                  destinations: const [
                    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                    NavigationDestination(icon: Icon(Icons.store), label: 'Store'),
                    NavigationDestination(icon: Icon(Icons.favorite), label: 'Wishlist'),
                    NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                  ],
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
''',
                                swidget: NavigationMenu(
                                    borderRadius: ClassicStyles.borderRadius,
                                    activeColor: ClassicStyles.activeColor)),
                            CodeAndPreview(
                                code: '''
class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  final List<Widget> screens = [
    const Center(child: Text("Home Screen")),
    const Center(child: Text("Store Screen")),
    const Center(child: Text("Wishlist Screen")),
    const Center(child: Text("Profile Screen")),
  ];
}

class ElegantNavigationBarWidget extends StatelessWidget {
  const ElegantNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(() => controller.screens[controller.selectedIndex.value]),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16)),
                color: const Color(0xFFF9F9F9),
              ),
              child: Obx(
                () => NavigationBar(
                  indicatorColor: const Color(0xFF6A5ACD),
                  height: 60,
                  elevation: 0,
                  selectedIndex: controller.selectedIndex.value,
                  onDestinationSelected: (index) =>
                      controller.selectedIndex.value = index,
                  destinations: const [
                    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                    NavigationDestination(icon: Icon(Icons.store), label: 'Store'),
                    NavigationDestination(icon: Icon(Icons.favorite), label: 'Wishlist'),
                    NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                  ],
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
''',
                                swidget: NavigationMenu(
                                    borderRadius: ElegantStyles.borderRadius,
                                    activeColor: ElegantStyles.activeColor)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Styling",
                style: TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
              ),
              StyleSection(
                options: navigationBarProperties,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "2 - External Packages",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "◆  Using molten_navigationbar_flutter",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleCodeAndPreview(code: '''
Card(
  elevation: 4,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  child: ExpansionTileCard(
    elevation: 0,
    title: Text('Tap to Expand'),
    subtitle: Text('See more details here'),
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('This is the expanded content. You can add anything here!'),
      ),
    ],
  ),
)
''', widget: MoltenNavigationMenu()),
              const SizedBox(
                height: 10,
              ),
              const TerminalRun(package: "molten_navigationbar_flutter"),
              const SizedBox(
                height: 10,
              ),
              const ImportCopyContainer(
                code:
                    "import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';",
              ),
              const SizedBox(
                height: 10,
              ),
              const TerminalRun(package: "get"),
              const SizedBox(
                height: 10,
              ),
              const ImportCopyContainer(
                code: "import 'package:get/get.dart';",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "◆  Using google_nav_bar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleCodeAndPreview(code: '''
class CollapsibleWidget extends StatefulWidget {
  @override
  _CollapsibleWidgetState createState() => _CollapsibleWidgetState();
}

class _CollapsibleWidgetState extends State<CollapsibleWidget> {
  bool _isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isCollapsed = !_isCollapsed;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tap to \${_isCollapsed ? "Expand" : "Collapse"}',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    _isCollapsed ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Collapsible(
            collapsed: _isCollapsed,
            axis: CollapsibleAxis.vertical,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.blue[100],
              child: Text(
                'This is the expanded content. You can add anything here!',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}''', widget: GoogleNavBar()),
              const SizedBox(
                height: 10,
              ),
              const TerminalRun(package: "google_nav_bar"),
              const SizedBox(
                height: 10,
              ),
              const ImportCopyContainer(
                code: "import 'package:google_nav_bar/google_nav_bar.dart';",
              ),
              const SizedBox(
                height: 10,
              ),
              const TerminalRun(package: "get"),
              const SizedBox(
                height: 10,
              ),
              const ImportCopyContainer(
                code: "import 'package:get/get.dart';",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "◆  Using pandabar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleCodeAndPreview(code: '''
Card(
  elevation: 4,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  child: Accordion(
    headerPadding: EdgeInsets.all(8),
    maxOpenSections: 1,
    headerBackgroundColor: Colors.white,
    contentBackgroundColor: Colors.lightBlue[50],
    children: [
      AccordionSection(
        header: Text('Section 1'),
        content: Text('This is the content of Section 1'),
      ),
      AccordionSection(
        header: Text('Section 2'),
        content: Text('This is the content of Section 2'),
      ),
    ],
  ),
)
''', widget: PandaBarNavigationMenu()),
              const SizedBox(
                height: 10,
              ),
              const TerminalRun(package: "pandabar"),
              const SizedBox(
                height: 10,
              ),
              const ImportCopyContainer(
                code:
                    "import 'package:pandabar/pandabar.dart';",
              ),
              const SizedBox(
                height: 10,
              ),
              const TerminalRun(package: "get"),
              const SizedBox(
                height: 10,
              ),
              const ImportCopyContainer(
                code: "import 'package:get/get.dart';",
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}

class NavigationMenu extends StatefulWidget {
  final BorderRadius borderRadius;
  final Color activeColor;
  const NavigationMenu(
      {super.key, required this.borderRadius, required this.activeColor});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Card(
      color: Colors.white.withOpacity(0.5),
      elevation: 4, // Elevation for subtle shadow
      shape: RoundedRectangleBorder(
        borderRadius: widget.borderRadius, // Rounded corners for the card
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding inside the card
        child: Column(
          mainAxisSize: MainAxisSize
              .min, // Ensure the column fits content inside the card
          children: [
            // Body content
            Obx(() => controller.screens[controller.selectedIndex.value]),
            const SizedBox(
                height: 8), // Add space between body and navigation bar
            // Bottom Navigation Bar
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(widget.borderRadius.topLeft.x),
                  bottomRight: Radius.circular(widget.borderRadius.topRight.x),
                ),
                color: const Color.fromARGB(255, 255, 255,
                    255), // Background color for the navigation bar
              ),
              child: Obx(
                () => NavigationBar(
                  indicatorColor: widget
                      .activeColor, // Active color for the selected destination
                  height: 60, // Height for the bottom navigation bar
                  elevation: 0,
                  selectedIndex: controller.selectedIndex.value,
                  onDestinationSelected: (index) =>
                      controller.selectedIndex.value = index,
                  destinations: const [
                    NavigationDestination(
                        icon: Icon(Iconsax.home), label: 'Home'),
                    NavigationDestination(
                        icon: Icon(Iconsax.shop), label: 'Store'),
                    NavigationDestination(
                        icon: Icon(Iconsax.heart), label: 'WishList'),
                    NavigationDestination(
                        icon: Icon(Iconsax.user), label: 'Profile'),
                  ],
                  backgroundColor: Colors
                      .transparent, // Transparent background as it will have a custom color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Card(
      elevation: 4, // Elevation for subtle shadow
      shape: const RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius, // Rounded corners for the card
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding inside the card
        child: Column(
          mainAxisSize: MainAxisSize
              .min, // Ensure the column fits content inside the card
          children: [
            // Body content
            Obx(() => controller.screens[controller.selectedIndex.value]),
            const SizedBox(
                height: 8), // Add space between body and navigation bar
            // Bottom Navigation Bar
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft:
                      Radius.circular(ModernStyles.borderRadius.topLeft.x),
                  bottomRight:
                      Radius.circular(ModernStyles.borderRadius.topRight.x),
                ),
                color: const Color.fromARGB(255, 255, 255,
                    255), // Background color for the navigation bar
              ),
              child: Obx(
                () => NavigationBar(
                  indicatorColor: ModernStyles
                      .activeColor, // Active color for the selected destination
                  height: 60, // Height for the bottom navigation bar
                  elevation: 0,
                  selectedIndex: controller.selectedIndex.value,
                  onDestinationSelected: (index) =>
                      controller.selectedIndex.value = index,
                  destinations: const [
                    NavigationDestination(
                        icon: Icon(Iconsax.home), label: 'Home'),
                    NavigationDestination(
                        icon: Icon(Iconsax.shop), label: 'Store'),
                    NavigationDestination(
                        icon: Icon(Iconsax.heart), label: 'WishList'),
                    NavigationDestination(
                        icon: Icon(Iconsax.user), label: 'Profile'),
                  ],
                  backgroundColor: Colors
                      .transparent, // Transparent background as it will have a custom color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(
      child: const Text("First Screen"),
    ), // Home screen
    Container(
      child: const Text("Second Screen"),
    ), // Store screen
    Container(
      child: const Text("Third Screen"),
    ), // WhishList screen
    Container(
      child: const Text("Fourth Screen"),
    ), // Profile screen
  ];
}

class GoogleNavBar extends StatefulWidget {
  const GoogleNavBar({super.key});

  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  final controller = Get.put(GNavigationController());
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Elevation for subtle shadow
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(12)), // Rounded corners for the card
      ),
      child: Padding(
          padding: const EdgeInsets.all(16.0), // Add padding inside the card
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(() => controller.screens[controller.selectedIndex.value]),
              const SizedBox(
                  height: 8), // Add space between body and navigation bar
              GNav(
                  rippleColor: const Color.fromRGBO(
                      66, 66, 66, 1), // tab button ripple color when pressed
                  hoverColor: const Color.fromRGBO(
                      97, 97, 97, 1), // tab button hover color
                  haptic: true, // haptic feedback
                  tabBorderRadius: 15,
                  tabActiveBorder: Border.all(
                      color: const Color.fromARGB(255, 143, 143, 143),
                      width: 1), // tab button border
                  tabBorder: Border.all(
                      color: Colors.grey, width: 1), // tab button border
                  tabShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(255, 221, 221, 221)
                            .withOpacity(0.5),
                        blurRadius: 8)
                  ], // tab button shadow
                  onTabChange: (value) {
                    setState(() {
                      controller.selectedIndex.value = value;
                    });
                  },
                  curve: Curves.easeOutExpo, // tab animation curves
                  duration:
                      Duration(milliseconds: 400), // tab animation duration
                  gap: 8, // the tab button gap between icon and text
                  color: const Color.fromARGB(
                      255, 114, 114, 114), // unselected icon color
                  activeColor: Colors.blue, // selected icon and text color
                  iconSize: 24, // tab button icon size
                  tabBackgroundColor: Colors.blue
                      .withOpacity(0.1), // selected tab background color
                  padding: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 5), // navigation bar padding
                  tabs: [
                    GButton(
                      icon: Iconsax.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Iconsax.heart,
                      text: 'Likes',
                    ),
                    GButton(
                      icon: Iconsax.shop,
                      text: 'shope',
                    ),
                    GButton(
                      icon: Iconsax.user,
                      text: 'Profile',
                    )
                  ]),
            ],
          )),
    );
  }
}

class GNavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(
      child: const Text("First Screen"),
    ), // Home screen
    Container(
      child: const Text("Second Screen"),
    ), // Store screen
    Container(
      child: const Text("Third Screen"),
    ), // WhishList screen
    Container(
      child: const Text("Fourth Screen"),
    ), // Profile screen
  ];
}

class MoltenNavigationMenu extends StatefulWidget {
  const MoltenNavigationMenu({super.key});

  @override
  State<MoltenNavigationMenu> createState() => _MoltenNavigationMenuState();
}

class _MoltenNavigationMenuState extends State<MoltenNavigationMenu> {
  final controller = Get.put(MoltenNavigationController());
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.5),
      elevation: 4, // Elevation for subtle shadow
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(12)), // Rounded corners for the card
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding inside the card
        child: Column(
          mainAxisSize: MainAxisSize
              .min, // Ensure the column fits content inside the card
          children: [
            // Body content
            Obx(() => controller.screens[controller.selectedIndex.value]),
            const SizedBox(height: 8),
            MoltenBottomNavigationBar(
              selectedIndex: controller.selectedIndex.value,
              onTabChange: (clickedIndex) {
                setState(() {
                  controller.selectedIndex.value = clickedIndex;
                });
              },
              tabs: [
                MoltenTab(
                  icon: Icon(Icons.search),
                ),
                MoltenTab(
                  icon: Icon(Icons.home),
                ),
                MoltenTab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MoltenNavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(
      child: const Text("First Screen"),
    ), // Home screen
    Container(
      child: const Text("Second Screen"),
    ), // Store screen
    Container(
      child: const Text("Third Screen"),
    ), // WhishList screen
  ];
}

class PandaBarNavigationMenu extends StatefulWidget {
  const PandaBarNavigationMenu({super.key});

  @override
  State<PandaBarNavigationMenu> createState() => _PandaBarNavigationMenuState();
}

class _PandaBarNavigationMenuState extends State<PandaBarNavigationMenu> {
  final controller = Get.put(PandaBarNavigationController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 500,
      child: Card(
        color: Colors.white.withOpacity(0.5),
        elevation: 4, // Elevation for subtle shadow
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(12)), // Rounded corners for the card
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Add padding inside the card
          child: Column(
            mainAxisSize: MainAxisSize
                .min, // Ensure the column fits content inside the card
            children: [
              // Body content
              Obx(() => controller.screens[controller.selectedIndex.value]),
              const SizedBox(
                  height: 20), // Add space between body and navigation bar
              // Bottom Navigation Bar
              PandaBar(
                buttonData: [
                  PandaBarButtonData(
                      id: 0, icon: Icons.dashboard, title: 'Grey'),
                  PandaBarButtonData(
                      id: 1, icon: Icons.book, title: 'Blue'),
                  PandaBarButtonData(
                      id: 2,
                      icon: Icons.account_balance_wallet,
                      title: 'Red'),
                  PandaBarButtonData(
                      id: 3, icon: Icons.notifications, title: 'Yellow'),
                ],
                onChange: (clickedIndex) {
                  setState(() {
                    controller.selectedIndex.value = clickedIndex ;
                  });
                },
                onFabButtonPressed: () {
                  setState(() {
                    controller.selectedIndex.value = 4 ;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PandaBarNavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(
      child: const Text("First Screen"),
    ), // Home screen
    Container(
      child: const Text("Second Screen"),
    ), // Store screen
    Container(
      child: const Text("Third Screen"),
    ), // WhishList screen
    Container(
      child: const Text("Fourth Screen"),
    ), // User screen
    Container(
      child: const Text("Fab Screen"),
    ), // User screen
  ];
}
