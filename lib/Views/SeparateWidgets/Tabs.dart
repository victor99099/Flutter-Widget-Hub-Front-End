import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Ccontrollers/PageController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class TabsPage extends StatelessWidget {
  TabsPage({super.key});
  final List<Map<String, String>> tabBarOptions = [
    {
      "Property": "tabs",
      "Possible Values": "List<Widget>",
      "Description": "A list of tabs to be displayed in the TabBar."
    },
    {
      "Property": "controller",
      "Possible Values": "TabController?",
      "Description":
          "The controller to manage the active tab and tab selection."
    },
    {
      "Property": "isScrollable",
      "Possible Values": "bool",
      "Description":
          "Whether the TabBar can scroll horizontally if the tabs overflow."
    },
    {
      "Property": "padding",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "Padding around the TabBar."
    },
    {
      "Property": "indicatorColor",
      "Possible Values": "Color?",
      "Description": "The color of the indicator below the selected tab."
    },
    {
      "Property": "automaticIndicatorColorAdjustment",
      "Possible Values": "bool",
      "Description":
          "Whether the indicator color should automatically adjust to match the label color."
    },
    {
      "Property": "indicatorWeight",
      "Possible Values": "double",
      "Description": "The thickness of the indicator below the selected tab."
    },
    {
      "Property": "indicatorPadding",
      "Possible Values": "EdgeInsetsGeometry",
      "Description": "Padding around the indicator."
    },
    {
      "Property": "indicator",
      "Possible Values": "Decoration?",
      "Description": "The decoration applied to the indicator."
    },
    {
      "Property": "indicatorSize",
      "Possible Values": "TabBarIndicatorSize?",
      "Description":
          "The size of the indicator, either based on the label's width or the entire tab."
    },
    {
      "Property": "dividerColor",
      "Possible Values": "Color?",
      "Description": "The color of the divider between tabs."
    },
    {
      "Property": "dividerHeight",
      "Possible Values": "double?",
      "Description": "The height of the divider between tabs."
    },
    {
      "Property": "labelColor",
      "Possible Values": "Color?",
      "Description": "The color of the label for the selected tab."
    },
    {
      "Property": "labelStyle",
      "Possible Values": "TextStyle?",
      "Description": "The text style of the label for the selected tab."
    },
    {
      "Property": "labelPadding",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "Padding around the label of the selected tab."
    },
    {
      "Property": "unselectedLabelColor",
      "Possible Values": "Color?",
      "Description": "The color of the label for unselected tabs."
    },
    {
      "Property": "unselectedLabelStyle",
      "Possible Values": "TextStyle?",
      "Description": "The text style of the label for unselected tabs."
    },
    {
      "Property": "dragStartBehavior",
      "Possible Values": "DragStartBehavior",
      "Description": "The drag start behavior for tab scrolling."
    },
    {
      "Property": "overlayColor",
      "Possible Values": "WidgetStateProperty<Color?>?",
      "Description": "The overlay color for the tab when it is tapped."
    },
    {
      "Property": "mouseCursor",
      "Possible Values": "MouseCursor?",
      "Description": "The mouse cursor style when hovering over the TabBar."
    },
    {
      "Property": "enableFeedback",
      "Possible Values": "bool?",
      "Description": "Whether feedback is enabled for tab taps."
    },
    {
      "Property": "onTap",
      "Possible Values": "void Function(int)?",
      "Description": "Callback triggered when a tab is tapped."
    },
    {
      "Property": "physics",
      "Possible Values": "ScrollPhysics?",
      "Description": "The physics for tab scrolling."
    },
    {
      "Property": "splashFactory",
      "Possible Values": "InteractiveInkFeatureFactory?",
      "Description": "The splash factory used to generate splash effects."
    },
    {
      "Property": "splashBorderRadius",
      "Possible Values": "BorderRadius?",
      "Description": "The border radius of the splash effect."
    },
    {
      "Property": "tabAlignment",
      "Possible Values": "TabAlignment?",
      "Description": "The alignment of the tabs within the TabBar."
    },
    {
      "Property": "textScaler",
      "Possible Values": "TextScaler?",
      "Description": "Scaler for adjusting the font size of the tab labels."
    },
    {
      "Property": "indicatorAnimation",
      "Possible Values": "TabIndicatorAnimation?",
      "Description": "The animation style for the tab indicator."
    },
  ];

  final List<Map<String, String>> tabViewOptions = [
    {
      "Property": "children",
      "Possible Values": "List<Widget>",
      "Description": "A list of widgets to be displayed within the TabView."
    },
    {
      "Property": "controller",
      "Possible Values": "TabController?",
      "Description":
          "The controller to manage the active tab and tab selection."
    },
    {
      "Property": "physics",
      "Possible Values": "ScrollPhysics?",
      "Description": "The physics for scrolling behavior within the TabView."
    },
    {
      "Property": "dragStartBehavior",
      "Possible Values": "DragStartBehavior",
      "Description": "The drag start behavior for tab scrolling."
    },
    {
      "Property": "viewportFraction",
      "Possible Values": "double",
      "Description":
          "The fraction of the viewport that each child of the TabView will occupy."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip",
      "Description": "The clipping behavior of the TabView children."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 15, right: 30),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tabs",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "In Flutter, Tab widgets are used to create tabbed navigation interfaces. They consist of a TabBar that displays the tabs and a TabBarView that shows the content for the selected tab. The TabController manages the active tab and allows for smooth transitions between them. This system is ideal for organizing content into separate sections that users can easily switch between. Tabs can display text, icons, or both, making it flexible for different UI needs.",
              style: TextStyle(
                color: Color(0xFFF0F0F0),
                fontSize: 17,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
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
            SizedBox(
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
                        labelStyle: TextStyle(
                            letterSpacing: 1.5, fontWeight: FontWeight.w500),
                        padding: EdgeInsets.only(top: 10),
                        labelPadding: EdgeInsets.all(5),
                        indicatorPadding: EdgeInsets.all(0),
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
                    Container(
                      height: MediaQuery.of(context).size.height * 0.58,
                      child: TabBarView(
                        children: [
                          CodeAndPreview(
                              code: '''
class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: TabBar(
              tabs: const [
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 1')),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 2')),
              ],
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.transparent,
              labelStyle: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            height: 100,
            child: TabBarView(
              children: [
                Center(
                    child: Text(
                  'Content for Tab 1',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                )),
                Center(
                    child: Text(
                  'Content for Tab 2',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
''',
                              swidget: TabsExample(
                                  bodyTextStyle: ModernStyles.bodyTextStyle,
                                  subtitleTextStyle:
                                      ModernStyles.subtitleTextStyle,
                                  borderRadius: ModernStyles.borderRadius,
                                  activeColor: ModernStyles.activeColor,
                                  baseColor: ModernStyles.baseColor)),
                          CodeAndPreview(
                              code: '''
class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: BorderRadius.all(Radius.circular(4)),
            child: TabBar(
              tabs: const [
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 1')),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 2')),
              ],
              indicatorColor:Colors.brown,
              labelColor:Colors.brown,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.transparent,
              labelStyle: GoogleFonts.merriweather(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            height: 100,
            child: TabBarView(
              children: [
                Center(
                    child: Text(
                  'Content for Tab 1',
                  style: GoogleFonts.courgette(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                )),
                Center(
                    child: Text(
                  'Content for Tab 2',
                  style: GoogleFonts.courgette(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
''',
                              swidget: TabsExample(
                                  bodyTextStyle: ClassicStyles.bodyTextStyle,
                                  subtitleTextStyle:
                                      ClassicStyles.subtitleTextStyle,
                                  borderRadius: ClassicStyles.borderRadius,
                                  activeColor: ClassicStyles.activeColor,
                                  baseColor: ClassicStyles.baseColor)),
                          CodeAndPreview(
                              code: '''
class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: TabBar(
              tabs: const [
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 1')),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 2')),
              ],
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.transparent,
              labelStyle: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            height: 100,
            child: TabBarView(
              children: [
                Center(
                    child: Text(
                  'Content for Tab 1',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                )),
                Center(
                    child: Text(
                  'Content for Tab 2',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
''',
                              swidget: TabsExample(
                                  bodyTextStyle: ElegantStyles.bodyTextStyle,
                                  subtitleTextStyle:
                                      ElegantStyles.subtitleTextStyle,
                                  borderRadius: ElegantStyles.borderRadius,
                                  activeColor: ElegantStyles.activeColor,
                                  baseColor: ElegantStyles.baseColor)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Styling for TabBar()",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            StyleSection(
              options: tabBarOptions,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Styling for TabBarView()",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            StyleSection(
              options: tabViewOptions,
            ),
            SizedBox(
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
            SizedBox(
              height: 20,
            ),
            Text(
              "◆  Using popover",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            SingleCodeAndPreview(code: '''
class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            child: TabBar(
              tabs: const [
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 1')),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 2')),
              ],
              indicatorColor: Color(0xFF6A5ACD),
              labelColor: Color(0xFF6A5ACD),
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.transparent,
              labelStyle: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFF2F2F2F),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            height: 100,
            child: TabBarView(
              children: [
                Center(
                    child: Text(
                  'Content for Tab 1',
                  style: GoogleFonts.dancingScript(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black54,
                  ),
                )),
                Center(
                    child: Text(
                  'Content for Tab 2',
                  style: GoogleFonts.dancingScript(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black54,
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
''', widget: ButtonsTabBarExample().paddingOnly(top:100)),
            SizedBox(
              height: 10,
            ),
            TerminalRun(package: "popover"),
            SizedBox(
              height: 10,
            ),
            ImportCopyContainer(
              code: "import 'package:popover/popover.dart';",
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class TabsExample extends StatelessWidget {
  final TextStyle bodyTextStyle;
  final TextStyle subtitleTextStyle;
  final BorderRadius borderRadius;
  final Color activeColor;
  final Color baseColor;
  const TabsExample(
      {Key? key,
      required this.bodyTextStyle,
      required this.subtitleTextStyle,
      required this.borderRadius,
      required this.activeColor,
      required this.baseColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: borderRadius,
            child: TabBar(
              tabs: const [
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 1')),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 2')),
              ],
              indicatorColor: activeColor,
              labelColor: activeColor,
              unselectedLabelColor: baseColor,
              dividerColor: Colors.transparent,
              labelStyle: bodyTextStyle,
            ),
          ),
          Container(
            decoration:
                BoxDecoration(color: Colors.white, borderRadius: borderRadius),
            height: 100,
            child: TabBarView(
              children: [
                Center(
                    child: Text(
                  'Content for Tab 1',
                  style: subtitleTextStyle,
                )),
                Center(
                    child: Text(
                  'Content for Tab 2',
                  style: subtitleTextStyle,
                )),
              ],
            ),
          ),
        ],
      ),
    ).paddingOnly(top:100);
  }
}

// class Tabs extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top:50),
//       child: DefaultTabController(
//         length: 2,
//         child: Column(
//           children: [
//             Material(
//               elevation: 4,
//               borderRadius: BorderRadius.all(Radius.circular(16)),
//               child: TabBar(
//                 tabs: const [
//                   Padding(
//                       padding: EdgeInsets.only(left: 20, right: 20),
//                       child: Tab(text: 'Tab 1')),
//                   Padding(
//                       padding: EdgeInsets.only(left: 20, right: 20),
//                       child: Tab(text: 'Tab 2')),
//                 ],
//                 indicatorColor: Color(0xFF6A5ACD),
//                 labelColor: Color(0xFF6A5ACD),
//                 unselectedLabelColor: Colors.grey,
//                 dividerColor: Colors.transparent,
//                 labelStyle: GoogleFonts.nunito(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w400,
//                   color: Color(0xFF2F2F2F),
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(Radius.circular(16))),
//               height: 100,
//               child: TabBarView(
//                 children: [
//                   Center(
//                       child: Text(
//                     'Content for Tab 1',
//                     style: GoogleFonts.dancingScript(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w300,
//                       color: Colors.black54,
//                     ),
//                   )),
//                   Center(
//                       child: Text(
//                     'Content for Tab 2',
//                     style: GoogleFonts.dancingScript(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w300,
//                       color: Colors.black54,
//                     ),
//                   )),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ButtonsTabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(8),
            child: ButtonsTabBar(
              backgroundColor: Colors.blue,
              unselectedBackgroundColor: Colors.grey[300],
              unselectedLabelStyle: TextStyle(color: Colors.black),
              labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.star), text: "Favorites"),
                Tab(icon: Icon(Icons.person), text: "Profile"),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            height: 120,
            child: TabBarView(
              children: [
                Center(child: Text('Home Tab Content')),
                Center(child: Text('Favorites Tab Content')),
                Center(child: Text('Profile Tab Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
