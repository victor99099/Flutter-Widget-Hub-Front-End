import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class DropDownPage extends StatefulWidget {
  const DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  final List<Map<String, String>> options = [
    {
      "Property": "items",
      "Possible Values": "List<DropdownMenuItem>",
      "Description": "The dropdown menu items."
    },
    {
      "Property": "selectedItemBuilder",
      "Possible Values": "List<Widget> Function(BuildContext)?",
      "Description": "Custom builder for the selected item."
    },
    {
      "Property": "value",
      "Possible Values": "String?",
      "Description": "The currently selected value."
    },
    {
      "Property": "hint",
      "Possible Values": "Widget?",
      "Description": "Hint widget to show when no value is selected."
    },
    {
      "Property": "onChanged",
      "Possible Values": "Function(String?)?",
      "Description": "Callback for value change."
    },
    {
      "Property": "elevation",
      "Possible Values": "int",
      "Description": "Elevation of the dropdown menu."
    },
    {
      "Property": "style",
      "Possible Values": "TextStyle?",
      "Description": "Text style of the selected item."
    },
    {
      "Property": "icon",
      "Possible Values": "Widget?",
      "Description": "The dropdown icon."
    },
    {
      "Property": "iconSize",
      "Possible Values": "double",
      "Description": "Size of the dropdown icon."
    },
    {
      "Property": "isDense",
      "Possible Values": "bool",
      "Description": "Whether the dropdown is dense."
    },
    {
      "Property": "isExpanded",
      "Possible Values": "bool",
      "Description": "Whether the dropdown should expand to fill its container."
    },
    {
      "Property": "dropdownColor",
      "Possible Values": "Color?",
      "Description": "Color of the dropdown menu."
    },
    {
      "Property": "decoration",
      "Possible Values": "InputDecoration?",
      "Description": "Decoration for the dropdown field."
    },
    {
      "Property": "validator",
      "Possible Values": "String? Function(String?)?",
      "Description": "Validation callback for the input."
    },
    {
      "Property": "autovalidateMode",
      "Possible Values": "AutovalidateMode?",
      "Description": "Validation mode for the dropdown."
    },
    {
      "Property": "borderRadius",
      "Possible Values": "BorderRadius?",
      "Description": "Border radius of the dropdown menu."
    },
  ];

  bool isCodeView = true;

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
              "Drop Down Menu",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Dropdown menus in Flutter provide an easy way to create custom, interactive components with full support for accessibility and keyboard navigation. They enable seamless selection from a list of options, making them ideal for user-friendly interfaces.",
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
                            swidget: DropdownExample(
                              borderRadius: ModernStyles.borderRadius,
                              textStyle: ModernStyles.bodyTextStyle,
                              inputDecoration: ModernStyles.inputDecoration,
                            ),
                            code: '''class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
      return Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
         filled: true,
         fillColor: Color(0xFFF0F0F0),
         border: OutlineInputBorder(
           borderRadius: borderRadius,
           borderSide: BorderSide(color: baseColor),
         ),
         enabledBorder: OutlineInputBorder(
           borderRadius: borderRadius,
           borderSide: BorderSide(color: baseColor),
         ),
         focusedBorder: OutlineInputBorder(
           borderRadius: borderRadius,
           borderSide: BorderSide(color: activeColor),
         ),
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        value: selectedValue,
        items: ['Option 1', 'Option 2', 'Option 3']
            .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                  ),
                )))
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
      ),
    );
  }
}''',
                          ),
                          CodeAndPreview(
                            swidget: DropdownExample(
                              borderRadius: ClassicStyles.borderRadius,
                              textStyle: ClassicStyles.bodyTextStyle,
                              inputDecoration: ClassicStyles.inputDecoration,
                            ),
                            code: '''class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
        ),
        value: selectedValue,
        items: ['Option 1', 'Option 2', 'Option 3']
            .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.brown,
                  ),
                )))
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
      ),
    );
  }
}''',
                          ),
                          CodeAndPreview(
                            swidget: DropdownExample(
                              borderRadius: ElegantStyles.borderRadius,
                              textStyle: ElegantStyles.bodyTextStyle,
                              inputDecoration: ElegantStyles.inputDecoration,
                            ),
                            code: '''class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
        ),
        value: selectedValue,
        items: ['Option 1', 'Option 2', 'Option 3']
            .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style:GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2F2F2F),
                  ),
                )))
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
      ),
    );
  }
}''',
                          ),
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
              options: options,
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
              "◆  Using flutter_dropdown",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleCodeAndPreview(
                code:
                    '''import 'package:flutter_dropdown/flutter_dropdown.dart';
class FlutterDropdownExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide.none
      ),
      child: DropDown<String>(
            showUnderline: false,
            items: ["Option 1", "Option 2", "Option 3"],
            hint: Text("Select an option"),
            onChanged: (value) {
              print("Selected: \$value");
            },
            isExpanded: true,
          ),
    );
     
  }
}''',
                widget: FlutterDropdownExample()),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "Run in terminal - ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          children: [
                        TextSpan(
                            text: "   flutter",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 234, 49),
                                fontSize: 16,
                                fontWeight: FontWeight.w900)),
                        TextSpan(
                            text: "   pub add flutter_dropdown",
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 15, 58),
                                fontSize: 16,
                                fontWeight: FontWeight.w800))
                      ])).paddingOnly(left: 20),
                  const CopyButton(
                    code: "flutter pub add flutter_dropdown",
                  ).paddingOnly(right: 20),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "◆  Using dropdown_button2",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleCodeAndPreview(
                code:
                    '''import 'package:dropdown_button2/dropdown_button2.dart';
class DropdownButton_2 extends StatefulWidget {
  @override
  State<DropdownButton_2> createState() => _DropdownButton_2State();
}

class _DropdownButton_2State extends State<DropdownButton_2> {
  String? selectedValue = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), side: BorderSide.none),
      child: DropdownButton2(
        underline: SizedBox(),
        isExpanded: true,
        hint: Text(
          'Select an Option',
          style: TextStyle(fontSize: 16),
        ),
        items: [
          DropdownMenuItem(value: "Option 1", child: Text("Option 1")),
          DropdownMenuItem(value: "Option 2", child: Text("Option 2")),
          DropdownMenuItem(value: "Option 3", child: Text("Option 3")),
        ],
        dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12))),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value as String?;
          });

          print("Selected: \$value");
        },
      ),
    );
  }
}''',
                widget: DropdownButton_2()),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "Run in terminal - ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          children: [
                        TextSpan(
                            text: "   flutter",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 234, 49),
                                fontSize: 16,
                                fontWeight: FontWeight.w900)),
                        TextSpan(
                            text: "   pub add dropdown_button2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 15, 58),
                                fontSize: 16,
                                fontWeight: FontWeight.w800))
                      ])).paddingOnly(left: 20),
                  const CopyButton(
                    code: "flutter pub add dropdown_button2",
                  ).paddingOnly(right: 20),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Comparison",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),

            const SizedBox(
              height: 20,
            ),
            const ComparisonTable(
              headers: [
                "Feature",
                "flutter_dropdown",
                "dropdown_button2",
              ],
              body: [
                ["Built-in Search", "✅", "❌"],
                ["Customizable Style", "✅", "✅"],
                ["Dynamic Item Widgets", "❌", "✅"],
                ["Dropdown Animation", "❌", "✅"],
              ],
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

// class ComparisonTable extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Table(
//       border: TableBorder.all(color: Color.fromARGB(255, 99, 185, 211)),
//       columnWidths: const {
//         0: FlexColumnWidth(2),
//         1: FlexColumnWidth(1),
//         2: FlexColumnWidth(1),
//       },
//       children: [
//         TableRow(
//           decoration: BoxDecoration(color: Colors.white.withOpacity(0.9)),
//           children: const [
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 "Feature",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 "flutter_dropdown",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 "dropdown_button2",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//         _buildTableRow("Built-in Search", "✅", "❌"),
//         _buildTableRow("Customizable Style", "✅", "✅"),
//         _buildTableRow("Dynamic Item Widgets", "❌", "✅"),
//         _buildTableRow("Dropdown Animation", "❌", "✅"),
//       ],
//     );
//   }

//   TableRow _buildTableRow(
//       String feature, String flutterDropdown, String dropdownButton2) {
//     return TableRow(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             feature,
//             textAlign: TextAlign.center,
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(flutterDropdown,
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.white)),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(dropdownButton2,
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.white)),
//         ),
//       ],
//     );
//   }
// }

class DropdownExample extends StatefulWidget {
  final BorderRadius borderRadius; // Accept the border radius directly
  final InputDecoration inputDecoration; // Accept the border radius directly
  final TextStyle textStyle; // Accept the input decoration directly
  const DropdownExample({
    super.key,
    required this.borderRadius,
    required this.textStyle,
    required this.inputDecoration,
  });

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: widget.borderRadius,
      ),
      child: DropdownButtonFormField<String>(
        isExpanded: true,
        style: widget.textStyle,
        borderRadius: widget.borderRadius,
        focusColor: Colors.transparent,
        decoration: widget.inputDecoration,
        value: selectedValue,
        items: ['Option 1', 'Option 2', 'Option 3']
            .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: widget.textStyle,
                )))
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
      ),
    );
  }
}

class FlutterDropdownExample extends StatelessWidget {
  const FlutterDropdownExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), side: BorderSide.none),
      child: DropDown<String>(
        showUnderline: false,
        items: const ["Option 1", "Option 2", "Option 3"],
        hint: const Text("Select an option"),
        onChanged: (value) {
          print("Selected: $value");
        },
        isExpanded: true,
      ),
    );
  }
}

class DropdownButton_2 extends StatefulWidget {
  const DropdownButton_2({super.key});

  @override
  State<DropdownButton_2> createState() => _DropdownButton_2State();
}

class _DropdownButton_2State extends State<DropdownButton_2> {
  String? selectedValue = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), side: BorderSide.none),
      child: DropdownButton2(
        underline: const SizedBox(),
        isExpanded: true,
        hint: const Text(
          'Select an Option',
          style: TextStyle(fontSize: 16),
        ),
        items: const [
          DropdownMenuItem(value: "Option 1", child: Text("Option 1")),
          DropdownMenuItem(value: "Option 2", child: Text("Option 2")),
          DropdownMenuItem(value: "Option 3", child: Text("Option 3")),
        ],
        dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12))),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });

          print("Selected: $value");
        },
      ),
    );
  }
}
