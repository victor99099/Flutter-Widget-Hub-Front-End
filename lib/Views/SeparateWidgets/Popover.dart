import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:popover/popover.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class PopoverPage extends StatelessWidget {
  PopoverPage({super.key});

  final List<Map<String, String>> popupMenuOptions = [
    {
      "Property": "itemBuilder",
      "Possible Values": "List<PopupMenuEntry<String>> Function(BuildContext)",
      "Description":
          "A function that builds the list of menu items when the popup is shown."
    },
    {
      "Property": "initialValue",
      "Possible Values": "String?",
      "Description": "The initial value of the popup menu when opened."
    },
    {
      "Property": "onOpened",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when the popup menu is opened."
    },
    {
      "Property": "onSelected",
      "Possible Values": "void Function(String)?",
      "Description": "Callback triggered when a menu item is selected."
    },
    {
      "Property": "onCanceled",
      "Possible Values": "void Function()?",
      "Description":
          "Callback triggered when the popup menu is dismissed without selection."
    },
    {
      "Property": "tooltip",
      "Possible Values": "String?",
      "Description":
          "The tooltip text displayed when hovering over the popup menu button."
    },
    {
      "Property": "elevation",
      "Possible Values": "double?",
      "Description": "The elevation of the popup menu."
    },
    {
      "Property": "shadowColor",
      "Possible Values": "Color?",
      "Description": "The color of the popup menu's shadow."
    },
    {
      "Property": "surfaceTintColor",
      "Possible Values": "Color?",
      "Description": "The tint color of the popup menu's surface."
    },
    {
      "Property": "padding",
      "Possible Values": "EdgeInsetsGeometry",
      "Description": "Padding around the popup menu button."
    },
    {
      "Property": "menuPadding",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "Padding inside the popup menu."
    },
    {
      "Property": "child",
      "Possible Values": "Widget?",
      "Description": "The widget to display as the popup menu button's child."
    },
    {
      "Property": "borderRadius",
      "Possible Values": "BorderRadius?",
      "Description": "The border radius of the popup menu."
    },
    {
      "Property": "splashRadius",
      "Possible Values": "double?",
      "Description": "The splash radius of the popup menu button."
    },
    {
      "Property": "icon",
      "Possible Values": "Widget?",
      "Description": "The icon displayed on the popup menu button."
    },
    {
      "Property": "iconSize",
      "Possible Values": "double?",
      "Description": "The size of the icon on the popup menu button."
    },
    {
      "Property": "offset",
      "Possible Values": "Offset",
      "Description": "The offset of the popup menu from its default position."
    },
    {
      "Property": "enabled",
      "Possible Values": "bool",
      "Description": "Whether the popup menu button is enabled."
    },
    {
      "Property": "shape",
      "Possible Values": "ShapeBorder?",
      "Description": "The shape of the popup menu."
    },
    {
      "Property": "color",
      "Possible Values": "Color?",
      "Description": "The color of the popup menu."
    },
    {
      "Property": "iconColor",
      "Possible Values": "Color?",
      "Description": "The color of the icon on the popup menu button."
    },
    {
      "Property": "enableFeedback",
      "Possible Values": "bool?",
      "Description": "Whether feedback is enabled for the popup menu button."
    },
    {
      "Property": "constraints",
      "Possible Values": "BoxConstraints?",
      "Description": "Constraints for the popup menu."
    },
    {
      "Property": "position",
      "Possible Values": "PopupMenuPosition?",
      "Description": "The position of the popup menu relative to the button."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip",
      "Description": "The clipping behavior of the popup menu."
    },
    {
      "Property": "useRootNavigator",
      "Possible Values": "bool",
      "Description": "Whether to use the root navigator for the popup menu."
    },
    {
      "Property": "popUpAnimationStyle",
      "Possible Values": "AnimationStyle?",
      "Description": "The animation style of the popup menu."
    },
    {
      "Property": "routeSettings",
      "Possible Values": "RouteSettings?",
      "Description": "The route settings for the popup menu."
    },
    {
      "Property": "style",
      "Possible Values": "ButtonStyle?",
      "Description": "The style of the popup menu button."
    },
    {
      "Property": "requestFocus",
      "Possible Values": "bool?",
      "Description": "Whether the popup menu should request focus when opened."
    },
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
              "Popover",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "A Popover widget in Flutter is a floating UI element that appears above the main interface, typically used to show additional information or a menu when triggered by a user action (e.g., tapping a button). It is commonly styled like a popup card with optional arrow indicators pointing to the triggering widget. Popovers are useful for lightweight contextual interactions without navigating to a new screen.",
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
                          CodeAndPreviewWithSave(
                              Number: 4,
                              name: "PopOver",
                              code: '''
class Popover extends StatelessWidget {
  const Popover({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: PopupMenuButton<String>(
        icon: Icon(Icons.more_vert, color: Colors.blue),
        itemBuilder: (context) => [
          PopupMenuItem(
              value: 'Item 1',
              child: Text(
                'Item 1',
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),
              )),
          PopupMenuItem(
              value: 'Item 2',
              child: Text(
                'Item 2',
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),
              )),
        ],
      ),
    );
  }
}
''',
                              swidget: PopoverExample(
                                  bodyTextStyle: ModernStyles.bodyTextStyle,
                                  borderRadius: ModernStyles.borderRadius,
                                  color: ModernStyles.activeColor)),
                          CodeAndPreviewWithSave(
                              Number: 4,
                              name: "PopOver",
                              code: '''
class Popover extends StatelessWidget {
  const Popover({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: PopupMenuButton<String>(
        icon: Icon(Icons.more_vert, color: Colors.brown),
        itemBuilder: (context) => [
          PopupMenuItem(
              value: 'Item 1',
              child: Text('Item 1',
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.brown,
                  ))),
          PopupMenuItem(
              value: 'Item 2',
              child: Text('Item 2',
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.brown,
                  ))),
        ],
      ),
    );
  }
}
''',
                              swidget: PopoverExample(
                                  bodyTextStyle: ClassicStyles.bodyTextStyle,
                                  borderRadius: ClassicStyles.borderRadius,
                                  color: ClassicStyles.activeColor)),
                          CodeAndPreviewWithSave(
                              Number: 4,
                              name: "PopOver",
                              code: '''
class Popover extends StatelessWidget {
  const Popover({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: PopupMenuButton<String>(
        icon: Icon(Icons.more_vert, color: Color(0xFF6A5ACD)),
        itemBuilder: (context) => [
          PopupMenuItem(
              value: 'Item 1',
              child: Text('Item 1',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2F2F2F),
                  ))),
          PopupMenuItem(
              value: 'Item 2',
              child: Text('Item 2',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2F2F2F),
                  ))),
        ],
      ),
    );
  }
}
''',
                              swidget: PopoverExample(
                                  bodyTextStyle: ElegantStyles.bodyTextStyle,
                                  borderRadius: ElegantStyles.borderRadius,
                                  color: ElegantStyles.activeColor)),
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
              options: popupMenuOptions,
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
              "◆  Using popover",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleCodeAndPreview(code: '''
class PopoverCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12), // Match card's border
        onTap: () {
          showPopover(
            context: context,
            bodyBuilder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Option 1',style: TextStyle(fontSize: 16),),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Option 2',style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
            direction: PopoverDirection.bottom,
            width: 200,
            height: 100,
            arrowHeight: 10,
            arrowWidth: 20,
          );
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(Icons.more_vert),
        ),
      ),
    );
  }
}
''', widget: PopoverCardExample()),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "popover"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code: "import 'package:popover/popover.dart';",
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class PopoverExample extends StatelessWidget {
  final TextStyle bodyTextStyle;
  final BorderRadius borderRadius;
  final Color color;
  const PopoverExample(
      {super.key,
      required this.bodyTextStyle,
      required this.borderRadius,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: PopupMenuButton<String>(
        icon: Icon(Icons.more_vert, color: color),
        itemBuilder: (context) => [
          PopupMenuItem(
              value: 'Item 1',
              child: Text(
                'Item 1',
                style: bodyTextStyle,
              )),
          PopupMenuItem(
              value: 'Item 2',
              child: Text(
                'Item 2',
                style: bodyTextStyle,
              )),
        ],
      ),
    );
  }
}

class PopoverCardExample extends StatelessWidget {
  const PopoverCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12), // Match card's border
        onTap: () {
          showPopover(
            context: context,
            bodyBuilder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Option 1',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Option 2', style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
            direction: PopoverDirection.bottom,
            width: 200,
            height: 100,
            arrowHeight: 10,
            arrowWidth: 20,
          );
        },
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(Icons.more_vert),
        ),
      ),
    );
  }
}

class PortalCardExample extends StatefulWidget {
  const PortalCardExample({super.key});

  @override
  State<PortalCardExample> createState() => _PortalCardExampleState();
}

class _PortalCardExampleState extends State<PortalCardExample> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Portal(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                setState(() => isOpen = !isOpen);
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(Icons.more_vert),
              ),
            ),
            PortalTarget(
              visible: isOpen,
              anchor: const Aligned(
                follower: Alignment.topCenter,
                target: Alignment.bottomCenter,
              ),
              portalFollower: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() => isOpen = false);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Option 1'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() => isOpen = false);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Option 2'),
                      ),
                    ),
                  ],
                ),
              ),
              child:
                  const SizedBox.shrink(), // Empty space for portal placement
            ),
          ],
        ),
      ),
    );
  }
}
