import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class RadioPage extends StatelessWidget {
  RadioPage({super.key});
  final List<Map<String, String>> properties = [
    {
      "Property": "value",
      "Possible Values": "String",
      "Description": "The value of the radio button."
    },
    {
      "Property": "groupValue",
      "Possible Values": "String?",
      "Description": "The value of the group that this radio button belongs to."
    },
    {
      "Property": "onChanged",
      "Possible Values": "void Function(String?)?",
      "Description":
          "Callback triggered when the value of the radio button changes."
    },
    {
      "Property": "mouseCursor",
      "Possible Values": "MouseCursor?",
      "Description":
          "The mouse cursor to use when hovering over the radio button."
    },
    {
      "Property": "toggleable",
      "Possible Values": "bool",
      "Description": "Indicates whether the radio button can be toggled."
    },
    {
      "Property": "activeColor",
      "Possible Values": "Color?",
      "Description": "The color of the radio button when selected."
    },
    {
      "Property": "fillColor",
      "Possible Values": "WidgetStateProperty<Color?>?",
      "Description": "The fill color of the radio button."
    },
    {
      "Property": "hoverColor",
      "Possible Values": "Color?",
      "Description": "The color of the radio button when hovering."
    },
    {
      "Property": "overlayColor",
      "Possible Values": "WidgetStateProperty<Color?>?",
      "Description": "The overlay color when the radio button is pressed."
    },
    {
      "Property": "splashRadius",
      "Possible Values": "double?",
      "Description": "The radius of the splash effect."
    },
    {
      "Property": "materialTapTargetSize",
      "Possible Values": "MaterialTapTargetSize?",
      "Description": "The tap target size of the radio button."
    },
    {
      "Property": "title",
      "Possible Values": "Widget?",
      "Description": "The title widget of the radio button."
    },
    {
      "Property": "subtitle",
      "Possible Values": "Widget?",
      "Description": "The subtitle widget of the radio button."
    },
    {
      "Property": "isThreeLine",
      "Possible Values": "bool",
      "Description":
          "Indicates whether the radio button uses a three-line layout."
    },
    {
      "Property": "dense",
      "Possible Values": "bool?",
      "Description": "Whether to use a dense layout for the radio button."
    },
    {
      "Property": "secondary",
      "Possible Values": "Widget?",
      "Description":
          "A widget to display next to the radio button, typically an icon."
    },
    {
      "Property": "selected",
      "Possible Values": "bool",
      "Description": "Indicates whether the radio button is selected."
    },
    {
      "Property": "controlAffinity",
      "Possible Values": "ListTileControlAffinity?",
      "Description":
          "Determines the position of the radio button in relation to the title."
    },
    {
      "Property": "autofocus",
      "Possible Values": "bool",
      "Description":
          "Indicates whether the radio button should automatically focus when created."
    },
    {
      "Property": "contentPadding",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "The padding around the content of the radio button."
    },
    {
      "Property": "shape",
      "Possible Values": "ShapeBorder?",
      "Description": "The shape of the radio button."
    },
    {
      "Property": "tileColor",
      "Possible Values": "Color?",
      "Description": "The background color of the radio button tile."
    },
    {
      "Property": "selectedTileColor",
      "Possible Values": "Color?",
      "Description":
          "The background color of the radio button tile when selected."
    },
    {
      "Property": "visualDensity",
      "Possible Values": "VisualDensity?",
      "Description": "Defines the visual density of the radio button."
    },
    {
      "Property": "focusNode",
      "Possible Values": "FocusNode?",
      "Description": "The focus node to use for managing focus."
    },
    {
      "Property": "onFocusChange",
      "Possible Values": "void Function(bool)?",
      "Description": "Callback triggered when the focus state changes."
    },
    {
      "Property": "enableFeedback",
      "Possible Values": "bool?",
      "Description":
          "Whether the radio button provides feedback on user interaction."
    },
    {
      "Property": "internalAddSemanticForOnTap",
      "Possible Values": "bool",
      "Description":
          "Whether to internally add semantic properties for tap interaction."
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
              "Forms",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "The Form widget in Flutter is a container for grouping and validating multiple form fields (like TextFormField). It provides a structure for user input and handles form validation efficiently. Using a GlobalKey<FormState>, developers can check if the form is valid, reset its fields, or save data. It is typically used in combination with widgets like TextFormField and buttons for creating interactive and user-friendly input forms.",
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
                              name: "Radio Group",
                              Number: 23,
                              code: '''
class RadioGroup extends StatefulWidget {
  const RadioGroup({Key? key}) : super(key: key);

  @override
  State<RadioGroup> createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        children: [
          RadioListTile<String>(
            title: Text(
              'Option 1',
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
            ),
            value: 'Option 1',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: Text(
              'Option 2',
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
            ),
            value: 'Option 2',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
''',
                              swidget: RadioGroupExample(
                                activeColor: ModernStyles.activeColor,
                                borderRadius: ModernStyles.borderRadius,
                                bodyTextStyle: ModernStyles.bodyTextStyle,
                              )),
                          CodeAndPreviewWithSave(
                              name: "Radio Group",
                              Number: 23,
                              code: '''
class RadioGroup extends StatefulWidget {
  const RadioGroup({Key? key}) : super(key: key);

  @override
  State<RadioGroup> createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Column(
        children: [
          RadioListTile<String>(
            title: Text(
              'Option 1',
              style: GoogleFonts.merriweather(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            value: 'Option 1',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: Text(
              'Option 2',
              style: GoogleFonts.merriweather(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            value: 'Option 2',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
''',
                              swidget: RadioGroupExample(
                                activeColor: ClassicStyles.activeColor,
                                borderRadius: ClassicStyles.borderRadius,
                                bodyTextStyle: ClassicStyles.bodyTextStyle,
                              )),
                          CodeAndPreviewWithSave(
                              name: "Radio Group",
                              Number: 23,
                              code: '''
class RadioGroup extends StatefulWidget {
  const RadioGroup({Key? key}) : super(key: key);

  @override
  State<RadioGroup> createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        children: [
          RadioListTile<String>(
            title: Text(
              'Option 1',
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFF2F2F2F),
              ),
            ),
            value: 'Option 1',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: Text(
              'Option 2',
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFF2F2F2F),
              ),
            ),
            value: 'Option 2',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
''',
                              swidget: RadioGroupExample(
                                activeColor: ElegantStyles.activeColor,
                                borderRadius: ElegantStyles.borderRadius,
                                bodyTextStyle: ElegantStyles.bodyTextStyle,
                              )),
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
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class RadioGroupExample extends StatefulWidget {
  final TextStyle bodyTextStyle;
  final BorderRadius borderRadius;
  final Color activeColor;
  const RadioGroupExample(
      {super.key,
      required this.activeColor,
      required this.bodyTextStyle,
      required this.borderRadius});

  @override
  State<RadioGroupExample> createState() => _RadioGroupExampleState();
}

class _RadioGroupExampleState extends State<RadioGroupExample> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: widget.borderRadius,
      ),
      child: Column(
        children: [
          RadioListTile<String>(
            activeColor: widget.activeColor,
            title: Text(
              'Option 1',
              style: widget.bodyTextStyle,
            ),
            value: 'Option 1',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
          RadioListTile<String>(
            activeColor: widget.activeColor,
            title: Text('Option 2', style: widget.bodyTextStyle),
            value: 'Option 2',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
        ],
      ),
    ).paddingOnly(top: 100, left: 50, right: 150, bottom: 50);
  }
}

class RadioGroup extends StatefulWidget {
  const RadioGroup({super.key});

  @override
  State<RadioGroup> createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 100, left: 50, right: 150),
        child: Column(
          children: [
            RadioListTile<String>(
              title: Text(
                'Option 1',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF2F2F2F),
                ),
              ),
              value: 'Option 1',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(
                'Option 2',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF2F2F2F),
                ),
              ),
              value: 'Option 2',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
