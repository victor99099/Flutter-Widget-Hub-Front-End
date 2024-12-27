import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:flutterwidgethub/Ccontrollers/PageController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class ListboxPage extends StatelessWidget {
  ListboxPage({super.key});

  final List<Map<String, String>> listViewOptions = [
    {
      "Property": "scrollDirection",
      "Possible Values": "Axis",
      "Description":
          "The axis along which the list should scroll (vertical or horizontal)."
    },
    {
      "Property": "reverse",
      "Possible Values": "bool",
      "Description":
          "Whether the list should be scrolled in the reverse direction."
    },
    {
      "Property": "controller",
      "Possible Values": "ScrollController?",
      "Description": "A controller for controlling the scroll position."
    },
    {
      "Property": "primary",
      "Possible Values": "bool?",
      "Description":
          "Whether the scroll view is the primary scroll view in the app."
    },
    {
      "Property": "physics",
      "Possible Values": "ScrollPhysics?",
      "Description":
          "Defines the physics for scrolling behavior (e.g., bouncing, clamping)."
    },
    {
      "Property": "shrinkWrap",
      "Possible Values": "bool",
      "Description":
          "Whether the list should take up only as much space as its children need."
    },
    {
      "Property": "padding",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "Padding to be applied around the list view."
    },
    {
      "Property": "itemExtent",
      "Possible Values": "double?",
      "Description":
          "The fixed height/width of each item for better performance in large lists."
    },
    {
      "Property": "itemExtentBuilder",
      "Possible Values": "double? Function(int, SliverLayoutDimensions)?",
      "Description":
          "A function to dynamically determine the item extent based on the index."
    },
    {
      "Property": "prototypeItem",
      "Possible Values": "Widget?",
      "Description":
          "A widget that is used as a prototype for the layout calculations of the list."
    },
    {
      "Property": "addAutomaticKeepAlives",
      "Possible Values": "bool",
      "Description":
          "Whether to automatically keep alive the state of items when they are not visible."
    },
    {
      "Property": "addRepaintBoundaries",
      "Possible Values": "bool",
      "Description":
          "Whether to add repaint boundaries to child widgets for performance."
    },
    {
      "Property": "addSemanticIndexes",
      "Possible Values": "bool",
      "Description":
          "Whether to add semantic indexes to the children for accessibility."
    },
    {
      "Property": "cacheExtent",
      "Possible Values": "double?",
      "Description":
          "The number of pixels to pre-cache before and after the visible region."
    },
    {
      "Property": "children",
      "Possible Values": "List<Widget>",
      "Description": "A list of widgets to be displayed inside the list view."
    },
    {
      "Property": "semanticChildCount",
      "Possible Values": "int?",
      "Description":
          "The number of children of the list view for accessibility purposes."
    },
    {
      "Property": "dragStartBehavior",
      "Possible Values": "DragStartBehavior",
      "Description":
          "Determines the drag start behavior when the user starts scrolling."
    },
    {
      "Property": "keyboardDismissBehavior",
      "Possible Values": "ScrollViewKeyboardDismissBehavior",
      "Description":
          "How the keyboard should behave when scrolling in the list view."
    },
    {
      "Property": "restorationId",
      "Possible Values": "String?",
      "Description":
          "An identifier used to restore the state of the scroll view during app lifecycle changes."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip",
      "Description":
          "Determines how the content should be clipped within the list view."
    },
    {
      "Property": "hitTestBehavior",
      "Possible Values": "HitTestBehavior",
      "Description":
          "Determines how the list view interacts with pointer events."
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
              "ListBox",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "The ListView widget in Flutter is a scrollable list of widgets arranged linearly, either vertically or horizontally. It is commonly used to display a large number of items in a scrolling view, efficiently loading only the items that are visible on the screen at a time. The ListView can be customized with various properties like padding, itemExtent, controller, and physics to enhance its appearance and behavior.",
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
class Listbox extends StatelessWidget {
  const Listbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
              title: Text('Item 1',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ))),
          ListTile(
              title: Text('Item 2',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ))),
          ListTile(
              title: Text('Item 3',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ))),
        ],
      ),
    );
  }
}
''',
                              swidget: ListboxExample(
                                bodyTextStyle: ModernStyles.bodyTextStyle,
                                borderRadius: ModernStyles.borderRadius,
                              )),
                          CodeAndPreview(
                              code: '''
class Listbox extends StatelessWidget {
  const Listbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
              title: Text('Item 1',
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.brown,
                  ))),
          ListTile(
              title: Text('Item 2',
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.brown,
                  ))),
          ListTile(
              title: Text('Item 3',
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
                              swidget: ListboxExample(
                                bodyTextStyle: ClassicStyles.bodyTextStyle,
                                borderRadius: ClassicStyles.borderRadius,
                              )),
                          CodeAndPreview(
                              code: '''
class Listbox extends StatelessWidget {
  const Listbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
              title: Text('Item 1',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2F2F2F),
                  ))),
          ListTile(
              title: Text('Item 2',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2F2F2F),
                  ))),
          ListTile(
              title: Text('Item 3',
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
                              swidget: ListboxExample(
                                bodyTextStyle: ElegantStyles.bodyTextStyle,
                                borderRadius: ElegantStyles.borderRadius,
                              )),
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
              "Styling",
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
              options: listViewOptions,
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
              "◆  Using flutter_swipe_action_cell",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            SingleCodeAndPreview(code: '''
class SwipeActionList extends StatelessWidget {
  final List<String> items = ['item 1','item 2','item 3'];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return SwipeActionCell(
            key: ValueKey(index),
            backgroundColor: Colors.white,
            trailingActions: [
              SwipeAction(
                title: "Edit",  // Change to Edit action
                onTap: (handler) async {
                  // Handle the edit action here
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Edit \${items[index]}'),
                  ));
                },
                color: Colors.blue,  // You can use blue or any other color for "Edit"
              ),
            ],
            child: Card(
              elevation: 5,
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text(items[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
''', widget: SwipeActionList()),
            SizedBox(
              height: 10,
            ),
            TerminalRun(package: "flutter_swipe_action_cell"),
            SizedBox(
              height: 10,
            ),
            ImportCopyContainer(
              code:
                  "import 'package:flutter_swipe_action_cell/core/cell.dart';",
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

class ListboxExample extends StatelessWidget {
  final BorderRadius borderRadius;
  final TextStyle bodyTextStyle;
  ListboxExample(
      {Key? key, required this.bodyTextStyle, required this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
              title: Text(
            'Item 1',
            style: bodyTextStyle,
          )),
          ListTile(
              title: Text(
            'Item 2',
            style: bodyTextStyle,
          )),
          ListTile(
              title: Text(
            'Item 3',
            style: bodyTextStyle,
          )),
        ],
      ),
    ).paddingOnly(left: 50, right: 50);
  }
}

class Listbox extends StatelessWidget {
  const Listbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
              title: Text('Item 1',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2F2F2F),
                  ))),
          ListTile(
              title: Text('Item 2',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2F2F2F),
                  ))),
          ListTile(
              title: Text('Item 3',
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

class SwipeActionList extends StatelessWidget {
  final List<String> items = ['item 1', 'item 2', 'item 3'];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return SwipeActionCell(
            key: ValueKey(index),
            backgroundColor: Colors.white,
            trailingActions: [
              SwipeAction(
                title: "Edit", // Change to Edit action
                onTap: (handler) async {
                  // Handle the edit action here
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Edit ${items[index]}'),
                  ));
                },
                color: Colors
                    .blue, // You can use blue or any other color for "Edit"
              ),
            ],
            child: Card(
              elevation: 5,
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text(items[index]),
              ),
            ),
          );
        },
      ),
    ).paddingOnly(top: 100, left: 50, right: 150);
  }
}
