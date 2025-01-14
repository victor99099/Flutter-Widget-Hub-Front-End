import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class DraggablesheetPage extends StatelessWidget {
  DraggablesheetPage({super.key});

  final List<Map<String, String>> showModalBottomSheetProperties = [
    {
      "Property": "context",
      "Possible Values": "BuildContext",
      "Description": "The build context in which the bottom sheet is displayed."
    },
    {
      "Property": "builder",
      "Possible Values": "Widget Function(BuildContext)",
      "Description":
          "Builder function to construct the content of the bottom sheet."
    },
    {
      "Property": "backgroundColor",
      "Possible Values": "Color?",
      "Description": "The background color of the bottom sheet."
    },
    {
      "Property": "barrierLabel",
      "Possible Values": "String?",
      "Description": "Label for accessibility for the barrier."
    },
    {
      "Property": "elevation",
      "Possible Values": "double?",
      "Description": "Elevation of the bottom sheet."
    },
    {
      "Property": "shape",
      "Possible Values": "ShapeBorder?",
      "Description": "Custom shape for the bottom sheet."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip?",
      "Description": "Behavior for clipping the content."
    },
    {
      "Property": "constraints",
      "Possible Values": "BoxConstraints?",
      "Description": "Constraints applied to the bottom sheet."
    },
    {
      "Property": "barrierColor",
      "Possible Values": "Color?",
      "Description": "Color of the modal barrier."
    },
    {
      "Property": "isScrollControlled",
      "Possible Values": "bool",
      "Description":
          "Whether the bottom sheet's height can expand to the full screen."
    },
    {
      "Property": "scrollControlDisabledMaxHeightRatio",
      "Possible Values": "double",
      "Description": "Maximum height ratio when scroll control is disabled."
    },
    {
      "Property": "useRootNavigator",
      "Possible Values": "bool",
      "Description":
          "Whether to use the root navigator for displaying the sheet."
    },
    {
      "Property": "isDismissible",
      "Possible Values": "bool",
      "Description": "Whether tapping outside the sheet dismisses it."
    },
    {
      "Property": "enableDrag",
      "Possible Values": "bool",
      "Description": "Whether the bottom sheet can be dragged."
    },
    {
      "Property": "showDragHandle",
      "Possible Values": "bool?",
      "Description": "Whether to show a drag handle at the top of the sheet."
    },
    {
      "Property": "useSafeArea",
      "Possible Values": "bool",
      "Description": "Whether to avoid unsafe areas on the screen."
    },
    {
      "Property": "routeSettings",
      "Possible Values": "RouteSettings?",
      "Description": "Settings for the route displaying the bottom sheet."
    },
    {
      "Property": "transitionAnimationController",
      "Possible Values": "AnimationController?",
      "Description": "Controller for customizing the transition animation."
    },
    {
      "Property": "anchorPoint",
      "Possible Values": "Offset?",
      "Description": "Anchor point for positioning the bottom sheet."
    },
    {
      "Property": "sheetAnimationStyle",
      "Possible Values": "AnimationStyle?",
      "Description": "Custom animation style for the bottom sheet."
    }
  ];

  final List<Map<String, String>> draggableScrollableSheetProperties = [
    {
      "Property": "key",
      "Possible Values": "Key?",
      "Description": "Key for the widget."
    },
    {
      "Property": "initialChildSize",
      "Possible Values": "double",
      "Description": "The initial size of the sheet relative to its parent."
    },
    {
      "Property": "minChildSize",
      "Possible Values": "double",
      "Description": "The minimum size of the sheet relative to its parent."
    },
    {
      "Property": "maxChildSize",
      "Possible Values": "double",
      "Description": "The maximum size of the sheet relative to its parent."
    },
    {
      "Property": "expand",
      "Possible Values": "bool",
      "Description": "Whether the sheet should expand to fill the parent."
    },
    {
      "Property": "snap",
      "Possible Values": "bool",
      "Description": "Whether the sheet should snap to defined sizes."
    },
    {
      "Property": "snapSizes",
      "Possible Values": "List<double>?",
      "Description": "List of sizes to which the sheet can snap."
    },
    {
      "Property": "snapAnimationDuration",
      "Possible Values": "Duration?",
      "Description": "Duration of the snapping animation."
    },
    {
      "Property": "controller",
      "Possible Values": "DraggableScrollableController?",
      "Description": "Controller to programmatically interact with the sheet."
    },
    {
      "Property": "shouldCloseOnMinExtent",
      "Possible Values": "bool",
      "Description":
          "Whether the sheet should close when reaching the minimum size."
    },
    {
      "Property": "builder",
      "Possible Values": "Widget Function(BuildContext, ScrollController)",
      "Description": "Builder function to define the content of the sheet."
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
              "Draggable Sheets",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "DraggableScrollableSheet is a Flutter widget that provides a scrollable container that can be dragged to resize its height dynamically. It is commonly used in bottom sheets or modal dialogs to create an interactive, expandable view.",
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
                              name: "Draggable Scrollable Sheet",
                              Number: 30,
                              code: '''
class ModernDraggableScrollableSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        onPressed: () => _showSheet(context),
        child: const Text('Modern Style'),
      ),
    );
  }

  void _showSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.1,
          maxChildSize: 0.7,
          builder: (context, controller) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 6,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Modern Style',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                      controller: controller,
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            child: Text(
                              '\${index + 1}',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          title: Text('Item \${index + 1}',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                              )),
                          subtitle: const Text('Subtitle goes here'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
''',
                              swidget: DraggableScrollableSheetExample(
                                  cardDecoration: ModernStyles.cardDecoration,
                                  borderRadius: ModernStyles.borderRadius,
                                  headingTextStyle:
                                      ModernStyles.headingTextStyle,
                                  bodyTextStyle: ModernStyles.bodyTextStyle,
                                  subtitleTextStyle:
                                      ModernStyles.subtitleTextStyle,
                                  buttonTextStyle: ModernStyles.buttonTextStyle,
                                  activeColor: ModernStyles.activeColor)),
                          CodeAndPreviewWithSave(
                              name: "Draggable Scrollable Sheet",
                              Number: 30,
                              code: '''
class ClassicDraggableScrollableSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
        ),
        onPressed: () => _showSheet(context),
        child: const Text('Classic Style'),
      ),
    );
  }

  void _showSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.1,
          maxChildSize: 0.7,
          builder: (context, controller) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.brown.shade100,
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                border: Border.all(color: Colors.brown.shade400),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 6,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Classic Style',
                    style: GoogleFonts.merriweather(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown.shade700,
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                      controller: controller,
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.brown,
                            child: Text(
                              '\${index + 1}',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          title: Text('Item \${index + 1}',
                              style: GoogleFonts.merriweather()),
                          subtitle: const Text('Subtitle goes here'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
''',
                              swidget: DraggableScrollableSheetExample(
                                  cardDecoration: ClassicStyles.cardDecoration,
                                  borderRadius: ClassicStyles.borderRadius,
                                  headingTextStyle:
                                      ClassicStyles.headingTextStyle,
                                  bodyTextStyle: ClassicStyles.bodyTextStyle,
                                  subtitleTextStyle:
                                      ClassicStyles.subtitleTextStyle,
                                  buttonTextStyle:
                                      ClassicStyles.buttonTextStyle,
                                  activeColor: ClassicStyles.activeColor)),
                          CodeAndPreviewWithSave(
                              name: "Draggable Scrollable Sheet",
                              Number: 30,
                              code: '''
class ElegantDraggableScrollableSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        onPressed: () => _showSheet(context),
        child: const Text('Elegant Style'),
      ),
    );
  }

  void _showSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.1,
          maxChildSize: 0.7,
          builder: (context, controller) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.purpleAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 6,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Elegant Style',
                    style: GoogleFonts.dancingScript(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Divider(color: Colors.white70),
                  Expanded(
                    child: ListView.builder(
                      controller: controller,
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.purple,
                            child: Text(
                              '\${index + 1}',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          title: Text(
                            'Item \${index + 1}',
                            style: GoogleFonts.dancingScript(
                              color: Colors.white,
                            ),
                          ),
                          subtitle: const Text('Subtitle goes here',
                              style: TextStyle(color: Colors.white70)),
                          trailing: const Icon(Icons.arrow_forward_ios,
                              color: Colors.white),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
}
''',
                              swidget: DraggableScrollableSheetExample(
                                  cardDecoration: ElegantStyles.cardDecoration,
                                  borderRadius: ElegantStyles.borderRadius,
                                  headingTextStyle:
                                      ElegantStyles.headingTextStyle,
                                  bodyTextStyle: ElegantStyles.bodyTextStyle,
                                  subtitleTextStyle:
                                      ElegantStyles.subtitleTextStyle,
                                  buttonTextStyle:
                                      ElegantStyles.buttonTextStyle,
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
              "Styling for showModalBottomSheet()",
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
              options: showModalBottomSheetProperties,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Styling for DraggableScrollableSheet()",
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
              options: draggableScrollableSheetProperties,
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

class DraggableScrollableSheetExample extends StatefulWidget {
  final BoxDecoration cardDecoration;
  final BorderRadius borderRadius;
  final TextStyle headingTextStyle;
  final TextStyle bodyTextStyle;
  final TextStyle subtitleTextStyle;
  final TextStyle buttonTextStyle;
  final Color activeColor;

  const DraggableScrollableSheetExample({
    super.key,
    required this.cardDecoration,
    required this.borderRadius,
    required this.headingTextStyle,
    required this.bodyTextStyle,
    required this.subtitleTextStyle,
    required this.buttonTextStyle,
    required this.activeColor,
  });

  @override
  _DraggableScrollableSheetExampleState createState() =>
      _DraggableScrollableSheetExampleState();
}

class _DraggableScrollableSheetExampleState
    extends State<DraggableScrollableSheetExample> {
  // Method to show the DraggableScrollableSheet
  void _showSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.1,
          maxChildSize: 0.7,
          expand: false,
          builder: (context, controller) {
            return Container(
              decoration: widget.cardDecoration,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 6,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: widget.borderRadius,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Draggable Sheet',
                    style: widget.headingTextStyle,
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                      controller: controller,
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: widget.activeColor,
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          title: Text(
                            'Item ${index + 1}',
                            style: widget.bodyTextStyle,
                          ),
                          subtitle: Text(
                            'Subtitle goes here',
                            style: widget.subtitleTextStyle,
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.blue),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          padding: WidgetStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
          shape: WidgetStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ),
        onPressed: _showSheet,
        child: Text(
          'Show Draggable Sheet',
          style: widget.buttonTextStyle,
        ),
      ),
    );
  }
}
