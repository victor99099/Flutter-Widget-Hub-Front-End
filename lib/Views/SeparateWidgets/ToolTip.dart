import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class TooltipPage extends StatelessWidget {
  TooltipPage({super.key});

  final List<Map<String, String>> tooltipProperties = [
    {
      "Property": "message",
      "Possible Values": "String?",
      "Description": "The main message text to display in the toast."
    },
    {
      "Property": "richMessage",
      "Possible Values": "InlineSpan?",
      "Description":
          "The message in a rich text format, allowing for custom styling."
    },
    {
      "Property": "height",
      "Possible Values": "double?",
      "Description": "The height of the toast widget."
    },
    {
      "Property": "padding",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "Padding around the content of the toast."
    },
    {
      "Property": "margin",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "Margin around the toast widget."
    },
    {
      "Property": "verticalOffset",
      "Possible Values": "double?",
      "Description": "Vertical offset from the bottom of the screen."
    },
    {
      "Property": "preferBelow",
      "Possible Values": "bool?",
      "Description": "Whether to display the toast below the trigger widget."
    },
    {
      "Property": "excludeFromSemantics",
      "Possible Values": "bool?",
      "Description":
          "Whether to exclude the toast from accessibility semantics."
    },
    {
      "Property": "decoration",
      "Possible Values": "Decoration?",
      "Description":
          "The decoration applied to the toast widget (e.g., border, color)."
    },
    {
      "Property": "textStyle",
      "Possible Values": "TextStyle?",
      "Description": "The text style for the toast message."
    },
    {
      "Property": "textAlign",
      "Possible Values": "TextAlign?",
      "Description": "The alignment of the toast message text."
    },
    {
      "Property": "waitDuration",
      "Possible Values": "Duration?",
      "Description": "The duration to wait before showing the toast."
    },
    {
      "Property": "showDuration",
      "Possible Values": "Duration?",
      "Description": "The duration for which the toast will be visible."
    },
    {
      "Property": "exitDuration",
      "Possible Values": "Duration?",
      "Description": "The duration for the toast to exit before disappearing."
    },
    {
      "Property": "enableTapToDismiss",
      "Possible Values": "bool",
      "Description": "Indicates whether tapping the toast dismisses it."
    },
    {
      "Property": "triggerMode",
      "Possible Values": "TooltipTriggerMode?",
      "Description": "The trigger mode for the tooltip (e.g., tap or hover)."
    },
    {
      "Property": "enableFeedback",
      "Possible Values": "bool?",
      "Description": "Whether to provide feedback when the toast is triggered."
    },
    {
      "Property": "onTriggered",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when the toast is shown."
    },
    {
      "Property": "child",
      "Possible Values": "Widget?",
      "Description":
          "Optional child widget that can be displayed inside the toast."
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
              "ToolTips",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "The Tooltip widget in Flutter provides a text label that appears when the user long-presses or hovers over a widget. It is commonly used to give additional context or describe the functionality of a widget. Tooltips enhance the user experience by providing helpful hints without cluttering the UI.",
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
            const SingleCodeAndPreviewWithSave(
                name: "ToolTip",
                number: 29,
                code: '''
class TooltipExample extends StatelessWidget {
  const TooltipExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'This is a tooltip!',
      child: Icon(Icons.info, color: Colors.white),
    );
  }
}
''',
                widget: TooltipExample()),
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
              options: tooltipProperties,
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

class TooltipExample extends StatelessWidget {
  const TooltipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      message: 'This is a tooltip!',
      child: Icon(
        Icons.info,
        color: ModernStyles.activeColor,
        size: 50,
      ),
    );
  }
}

class TooltipExample2 extends StatelessWidget {
  final Color activeColor;
  const TooltipExample2({super.key, required this.activeColor});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'This is a tooltip!',
      child: Icon(
        Icons.info,
        color: activeColor,
        size: 50,
      ),
    );
  }
}
