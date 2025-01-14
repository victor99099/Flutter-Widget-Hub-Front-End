import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import '../../Styles/styles.dart';
import 'package:grouped_checkbox/grouped_checkbox.dart';

import '../MainScreens/CommonWidgets.dart';

class CheckboxPage extends StatelessWidget {
  CheckboxPage({super.key});
  final List<Map<String, String>> properties = [
    {
      "Property": "value",
      "Possible Values": "bool?",
      "Description": "The current value of the checkbox."
    },
    {
      "Property": "onChanged",
      "Possible Values": "void Function(bool?)?",
      "Description": "Callback triggered when the checkbox state changes."
    },
    {
      "Property": "mouseCursor",
      "Possible Values": "MouseCursor?",
      "Description":
          "The mouse cursor to show when a pointer is hovering over the checkbox."
    },
    {
      "Property": "activeColor",
      "Possible Values": "Color?",
      "Description":
          "The color to use for the checkmark when the checkbox is checked."
    },
    {
      "Property": "fillColor",
      "Possible Values": "WidgetStateProperty<Color?>?",
      "Description": "The color to use for the checkbox background."
    },
    {
      "Property": "checkColor",
      "Possible Values": "Color?",
      "Description": "The color of the checkmark."
    },
    {
      "Property": "hoverColor",
      "Possible Values": "Color?",
      "Description": "The color to use for the checkbox when hovered."
    },
    {
      "Property": "overlayColor",
      "Possible Values": "WidgetStateProperty<Color?>?",
      "Description": "The color to use for the checkbox overlay."
    },
    {
      "Property": "splashRadius",
      "Possible Values": "double?",
      "Description": "The radius of the ink response."
    },
    {
      "Property": "materialTapTargetSize",
      "Possible Values": "MaterialTapTargetSize?",
      "Description": "Defines the size of the tap target."
    },
    {
      "Property": "visualDensity",
      "Possible Values": "VisualDensity?",
      "Description": "Controls the visual density of the checkbox."
    },
    {
      "Property": "focusNode",
      "Possible Values": "FocusNode?",
      "Description": "The focus node for this widget."
    },
    {
      "Property": "autofocus",
      "Possible Values": "bool",
      "Description":
          "Whether the checkbox should automatically focus when the screen opens."
    },
    {
      "Property": "shape",
      "Possible Values": "ShapeBorder?",
      "Description": "The shape of the checkbox."
    },
    {
      "Property": "side",
      "Possible Values": "BorderSide?",
      "Description": "The border of the checkbox."
    },
    {
      "Property": "isError",
      "Possible Values": "bool",
      "Description": "Whether the checkbox is in an error state."
    },
    {
      "Property": "enabled",
      "Possible Values": "bool?",
      "Description": "Whether the checkbox is enabled."
    },
    {
      "Property": "tileColor",
      "Possible Values": "Color?",
      "Description": "The background color of the list tile."
    },
    {
      "Property": "title",
      "Possible Values": "Widget?",
      "Description": "The primary content of the list tile."
    },
    {
      "Property": "subtitle",
      "Possible Values": "Widget?",
      "Description": "The secondary content of the list tile."
    },
    {
      "Property": "isThreeLine",
      "Possible Values": "bool",
      "Description":
          "Whether the list tile should be displayed with three lines."
    },
    {
      "Property": "dense",
      "Possible Values": "bool?",
      "Description": "Whether the list tile should be displayed compactly."
    },
    {
      "Property": "secondary",
      "Possible Values": "Widget?",
      "Description": "The widget to display after the title."
    },
    {
      "Property": "selected",
      "Possible Values": "bool",
      "Description": "Whether the list tile is selected."
    },
    {
      "Property": "controlAffinity",
      "Possible Values": "ListTileControlAffinity?",
      "Description": "The alignment of the checkbox within the list tile."
    },
    {
      "Property": "contentPadding",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "The padding of the list tile content."
    },
    {
      "Property": "tristate",
      "Possible Values": "bool",
      "Description": "Whether the checkbox can be in an indeterminate state."
    },
    {
      "Property": "checkboxShape",
      "Possible Values": "OutlinedBorder?",
      "Description": "The shape of the checkbox."
    },
    {
      "Property": "selectedTileColor",
      "Possible Values": "Color?",
      "Description": "The background color of the list tile when selected."
    },
    {
      "Property": "onFocusChange",
      "Possible Values": "void Function(bool)?",
      "Description": "Callback triggered when the checkbox focus changes."
    },
    {
      "Property": "enableFeedback",
      "Possible Values": "bool?",
      "Description": "Whether to provide visual feedback for taps."
    },
    {
      "Property": "checkboxSemanticLabel",
      "Possible Values": "String?",
      "Description": "The semantic label for the checkbox."
    },
    {
      "Property": "checkboxScaleFactor",
      "Possible Values": "double",
      "Description": "The scale factor for the checkbox size."
    },
    {
      "Property": "internalAddSemanticForOnTap",
      "Possible Values": "bool",
      "Description":
          "Whether to automatically add semantics for the onTap event."
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
              "CheckBox",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "The Checkbox widget in Flutter is a material design control that allows users to make a binary choice (checked or unchecked). It is commonly used in forms, settings, or lists to represent a selection or a toggleable state.",
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
                              name: "Check-Box",
                              Number: 15,
                              code: '''
CheckboxListTile(
  title: Text(
    'Check this box',
    style: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black87,
    ),
  ),
  value: isChecked,
  onChanged: (value) {
    setState(() {
      isChecked = value!;
    });
  },
  activeColor: Colors.blue,
),
''',
                              swidget: CheckboxExample(
                                  color: ModernStyles.activeColor,
                                  bodyTextStyle: ModernStyles.bodyTextStyle,
                                  borderRadius: ModernStyles.borderRadius)),
                          CodeAndPreviewWithSave(
                              name: "Check-Box",
                              Number: 15,
                              code: '''
CheckboxListTile(
  title: Text('Check this box',
      style: GoogleFonts.merriweather(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.brown,
      )),
  value: isChecked,
  onChanged: (value) {
    setState(() {
      isChecked = value!;
    });
  },
  activeColor: Colors.brown,
),
''',
                              swidget: CheckboxExample(
                                  color: ClassicStyles.activeColor,
                                  bodyTextStyle: ClassicStyles.bodyTextStyle,
                                  borderRadius: ClassicStyles.borderRadius)),
                          CodeAndPreviewWithSave(
                              name: "Check-Box",
                              Number: 15,
                              code: '''
CheckboxListTile(
  title: Text('Check this box',
      style: GoogleFonts.nunito(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Color(0xFF2F2F2F),
      )),
  value: isChecked,
  onChanged: (value) {
    setState(() {
      isChecked = value!;
    });
  },
  activeColor: Color(0xFF6A5ACD),
),
''',
                              swidget: CheckboxExample(
                                  color: ElegantStyles.activeColor,
                                  bodyTextStyle: ElegantStyles.bodyTextStyle,
                                  borderRadius: ElegantStyles.borderRadius)),
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
              options: properties,
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
              "◆  Using grouped_checkbox",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleCodeAndPreview(code: '''
class GroupedCheckboxExample extends StatefulWidget {
  @override
  _GroupedCheckboxExampleState createState() => _GroupedCheckboxExampleState();
}

class _GroupedCheckboxExampleState extends State<GroupedCheckboxExample> {
  List<String> items = ["Option 1", "Option 2", "Option 3"];
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: GroupedCheckbox<String>(
          itemList: items, // The list of items to display as checkboxes
          orientation:
              CheckboxOrientation.vertical, // Horizontal or Vertical layout
          onChanged: (checkedItems) {
            setState(() {
              selectedItems = checkedItems ?? [];
            });
          },
          itemWidgetBuilder: (item) {
            return Text(item); // Customize how each item is displayed
          },
          checkedItemList: selectedItems, // Preselected items
          activeColor: Colors.blue, // Active checkbox color
          checkColor: Colors.white, // Checkmark color
        ),
      ),
    );
  }
}
''', widget: GroupedCheckboxExample()),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "grouped_checkbox"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code: "import 'package:grouped_checkbox/grouped_checkbox.dart';",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "◆  Using roundcheckbox",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleCodeAndPreview(code: '''
class RoundCheckboxExample extends StatefulWidget {
  @override
  _RoundCheckboxExampleState createState() => _RoundCheckboxExampleState();
}

class _RoundCheckboxExampleState extends State<RoundCheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: RoundCheckBox(
          onTap: (selected) {
            setState(() {
              isChecked = selected!;
            });
          },
          isChecked: isChecked,
          uncheckedColor: Colors.grey,
          checkedColor: Colors.blue,
          size: 40,
        ),
      ),
    );
  }
}
''', widget: RoundCheckboxExample()),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "roundcheckbox"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code: "import 'package:roundcheckbox/roundcheckbox.dart';",
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

class CheckboxExample extends StatefulWidget {
  final Color color;
  final TextStyle bodyTextStyle;
  final BorderRadius borderRadius;
  const CheckboxExample(
      {super.key,
      required this.color,
      required this.bodyTextStyle,
      required this.borderRadius});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: widget.borderRadius,
      ),
      child: CheckboxListTile(
        title: Text(
          'Check this box',
          style: widget.bodyTextStyle,
        ),
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
        activeColor: widget.color,
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: CheckboxListTile(
        title: Text('Check this box',
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF2F2F2F),
            )),
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
        activeColor: const Color(0xFF6A5ACD),
      ),
    );
  }
}

class GroupedCheckboxExample extends StatefulWidget {
  const GroupedCheckboxExample({super.key});

  @override
  _GroupedCheckboxExampleState createState() => _GroupedCheckboxExampleState();
}

class _GroupedCheckboxExampleState extends State<GroupedCheckboxExample> {
  List<String> items = ["Option 1", "Option 2", "Option 3"];
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: GroupedCheckbox<String>(
          itemList: items, // The list of items to display as checkboxes
          orientation:
              CheckboxOrientation.vertical, // Horizontal or Vertical layout
          onChanged: (checkedItems) {
            setState(() {
              selectedItems = checkedItems ?? [];
            });
          },
          itemWidgetBuilder: (item) {
            return Text(item); // Customize how each item is displayed
          },
          checkedItemList: selectedItems, // Preselected items
          activeColor: Colors.blue, // Active checkbox color
          checkColor: Colors.white, // Checkmark color
        ),
      ),
    );
  }
}

class RoundCheckboxExample extends StatefulWidget {
  const RoundCheckboxExample({super.key});

  @override
  _RoundCheckboxExampleState createState() => _RoundCheckboxExampleState();
}

class _RoundCheckboxExampleState extends State<RoundCheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: RoundCheckBox(
          onTap: (selected) {
            setState(() {
              isChecked = selected!;
            });
          },
          isChecked: isChecked,
          uncheckedColor: Colors.grey,
          checkedColor: Colors.blue,
          size: 40,
        ),
      ),
    );
  }
}
