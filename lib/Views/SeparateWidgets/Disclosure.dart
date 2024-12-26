import 'package:accordion/accordion.dart';
import 'package:collapsible/collapsible.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class DisclosurePage extends StatelessWidget {
  DisclosurePage({super.key});

  final List<Map<String, String>> options = [
    {
      "Property": "key",
      "Possible Values": "Key?",
      "Description": "The key to identify the widget."
    },
    {
      "Property": "leading",
      "Possible Values": "Widget?",
      "Description": "A widget to display before the title."
    },
    {
      "Property": "title",
      "Possible Values": "required Widget",
      "Description": "The primary widget displayed as the title of the tile."
    },
    {
      "Property": "subtitle",
      "Possible Values": "Widget?",
      "Description": "A widget displayed below the title."
    },
    {
      "Property": "onExpansionChanged",
      "Possible Values": "void Function(bool)?",
      "Description": "Callback triggered when the expansion state changes."
    },
    {
      "Property": "children",
      "Possible Values": "List<Widget>",
      "Description": "List of widgets to display when the tile is expanded."
    },
    {
      "Property": "trailing",
      "Possible Values": "Widget?",
      "Description": "A widget displayed after the title."
    },
    {
      "Property": "showTrailingIcon",
      "Possible Values": "bool",
      "Description": "Whether to show the default trailing icon when collapsed."
    },
    {
      "Property": "initiallyExpanded",
      "Possible Values": "bool",
      "Description": "Whether the tile should start in the expanded state."
    },
    {
      "Property": "maintainState",
      "Possible Values": "bool",
      "Description":
          "Whether to maintain the expanded state when rebuilding the widget."
    },
    {
      "Property": "tilePadding",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "Padding around the entire tile."
    },
    {
      "Property": "expandedCrossAxisAlignment",
      "Possible Values": "CrossAxisAlignment?",
      "Description": "The cross-axis alignment of the children when expanded."
    },
    {
      "Property": "expandedAlignment",
      "Possible Values": "Alignment?",
      "Description": "Alignment of the expanded tile."
    },
    {
      "Property": "childrenPadding",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "Padding around the children widgets."
    },
    {
      "Property": "backgroundColor",
      "Possible Values": "Color?",
      "Description": "The background color of the tile when expanded."
    },
    {
      "Property": "collapsedBackgroundColor",
      "Possible Values": "Color?",
      "Description": "The background color of the tile when collapsed."
    },
    {
      "Property": "textColor",
      "Possible Values": "Color?",
      "Description": "The color of the text in the title when expanded."
    },
    {
      "Property": "collapsedTextColor",
      "Possible Values": "Color?",
      "Description": "The color of the text in the title when collapsed."
    },
    {
      "Property": "iconColor",
      "Possible Values": "Color?",
      "Description": "The color of the icon in the tile."
    },
    {
      "Property": "collapsedIconColor",
      "Possible Values": "Color?",
      "Description": "The color of the icon when the tile is collapsed."
    },
    {
      "Property": "shape",
      "Possible Values": "ShapeBorder?",
      "Description": "The shape of the tile."
    },
    {
      "Property": "collapsedShape",
      "Possible Values": "ShapeBorder?",
      "Description": "The shape of the tile when collapsed."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip?",
      "Description": "The clipping behavior for the tile."
    },
    {
      "Property": "controlAffinity",
      "Possible Values": "ListTileControlAffinity?",
      "Description":
          "How the control for expansion (e.g., the icon) should be positioned relative to the title."
    },
    {
      "Property": "controller",
      "Possible Values": "ExpansionTileController?",
      "Description": "A controller for the expansion tile."
    },
    {
      "Property": "dense",
      "Possible Values": "bool?",
      "Description": "Whether the tile should be displayed in a denser format."
    },
    {
      "Property": "visualDensity",
      "Possible Values": "VisualDensity?",
      "Description": "The visual density of the tile."
    },
    {
      "Property": "minTileHeight",
      "Possible Values": "double?",
      "Description": "The minimum height of the tile."
    },
    {
      "Property": "enableFeedback",
      "Possible Values": "bool?",
      "Description":
          "Whether the tile should trigger haptic feedback when tapped."
    },
    {
      "Property": "enabled",
      "Possible Values": "bool",
      "Description": "Whether the tile is enabled and can be interacted with."
    },
    {
      "Property": "expansionAnimationStyle",
      "Possible Values": "AnimationStyle?",
      "Description": "The style of animation for the expansion."
    },
    {
      "Property": "internalAddSemanticForOnTap",
      "Possible Values": "bool",
      "Description": "Whether to add semantic information for tapping the tile."
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
                "Disclosure",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "The Disclosure widget in Flutter is used to show or hide content based on user interaction, often seen in collapsible panels or accordions. It allows for dynamic content display with animations.",
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
Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(8),
        title: Text(
          'Tap to Expand',
          style: GoogleFonts.openSans(
           fontSize: 16,
           fontWeight: FontWeight.normal,
           color: Colors.black87,
          ),
        ),
        children: [
          Text(
            'Expanded content goes here',
            style: GoogleFonts.lato(
             fontSize: 14,
             fontWeight: FontWeight.w400,
             color: Colors.grey,
            ),
          )
        ],
      ),
    )
''',
                                swidget: DisclosureExample(
                                  borderRadius: ModernStyles.borderRadius,
                                  textStyle: ModernStyles.bodyTextStyle,
                                  subtitleTextStyle:
                                      ModernStyles.subtitleTextStyle,
                                )),
                            CodeAndPreview(
                                code: '''
Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(8),
        title: Text(
          'Tap to Expand',
          style: GoogleFonts.merriweather(
           fontSize: 16,
           fontWeight: FontWeight.normal,
           color: Colors.brown,
          ),
        ),
        children: [
          Text(
            'Expanded content goes here',
             style: GoogleFonts.courgette(
             fontSize: 14,
             fontWeight: FontWeight.w400,
             fontStyle: FontStyle.italic,
             color: Colors.grey,
           ),
          )
        ],
      ),
    )
''',
                                swidget: DisclosureExample(
                                  borderRadius: ClassicStyles.borderRadius,
                                  textStyle: ClassicStyles.bodyTextStyle,
                                  subtitleTextStyle:
                                      ClassicStyles.subtitleTextStyle,
                                )),
                            CodeAndPreview(
                                code: '''
Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(8),
        title: Text(
          'Tap to Expand',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xFF2F2F2F),
          ),
        ),
        children: [
          Text(
            'Expanded content goes here',
            style: GoogleFonts.dancingScript(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.black54,
            ),
          )
        ],
      ),
    ) 
''',
                                swidget: DisclosureExample(
                                  borderRadius: ElegantStyles.borderRadius,
                                  textStyle: ElegantStyles.bodyTextStyle,
                                  subtitleTextStyle:
                                      ElegantStyles.subtitleTextStyle,
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
                options: options,
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
                "◆  Using expansion_tile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
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
''', widget: ExpansionTileCardExample()),
              SizedBox(
                height: 10,
              ),
              TerminalRun(package: "expansion_tile_card"),
              SizedBox(
                height: 10,
              ),
              ImportCopyContainer(
                code:
                    "import 'package:expansion_tile_card/expansion_tile_card.dart';",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "◆  Using collapsible",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
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
}''', widget: CollapsibleExample()),
              SizedBox(
                height: 10,
              ),
              TerminalRun(package: "collapsible"),
              SizedBox(
                height: 10,
              ),
              ImportCopyContainer(
                code: "import 'package:collapsible/collapsible.dart';",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "◆  Using accordion",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
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
''', widget: AccordionExample()),
              SizedBox(
                height: 10,
              ),
              TerminalRun(package: "accordion"),
              SizedBox(
                height: 10,
              ),
              ImportCopyContainer(
                code: "import 'package:accordion/accordion.dart';",
              ),
              SizedBox(
                height: 20,
              ),
              ComparisonTable(
                headers: [
                  "Feature",
                  "Expansion_tile_card",
                  "Collapsible",
                  "accordion",
                ],
                body: [
                  ["Multi-Level Support", "❌", "✅","✅"],
                  ["Animation Options", "✅", "✅","✅"],
                  ["Card/Panel Style", "✅", "❌","❌"],
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}


class DisclosureExample extends StatelessWidget {
  final BorderRadius borderRadius; // Accept the border radius directly
  final TextStyle textStyle; // Accept the input decoration directly
  final TextStyle subtitleTextStyle; // Accept the input decoration directly
  DisclosureExample({
    Key? key,
    required this.borderRadius,
    required this.textStyle,
    required this.subtitleTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(8),
        title: Text(
          'Tap to Expand',
          style: textStyle,
        ),
        children: [
          Text(
            'Expanded content goes here',
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}

class ExpansionTileCardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
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
            child: Text(
                'This is the expanded content. You can add anything here!'),
          ),
        ],
      ),
    );
  }
}

class CollapsibleExample extends StatefulWidget {
  @override
  _CollapsibleExampleState createState() => _CollapsibleExampleState();
}

class _CollapsibleExampleState extends State<CollapsibleExample> {
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
                    'Tap to ${_isCollapsed ? "Expand" : "Collapse"}',
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
}

class AccordionExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
