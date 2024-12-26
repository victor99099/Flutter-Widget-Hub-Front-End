import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class ButtonPage extends StatelessWidget {
  ButtonPage({super.key});
  final List<Map<String, String>> ElevatedProperties = [
    {
      "Property": "onPressed",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when the button is pressed."
    },
    {
      "Property": "onLongPress",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when the button is long-pressed."
    },
    {
      "Property": "onHover",
      "Possible Values": "void Function(bool)?",
      "Description": "Callback triggered when the button is hovered over."
    },
    {
      "Property": "onFocusChange",
      "Possible Values": "void Function(bool)?",
      "Description": "Callback triggered when the button focus changes."
    },
    {
      "Property": "style",
      "Possible Values": "ButtonStyle?",
      "Description": "Defines the visual styling for the button."
    },
    {
      "Property": "focusNode",
      "Possible Values": "FocusNode?",
      "Description": "Manages focus state for the button."
    },
    {
      "Property": "autofocus",
      "Possible Values": "bool",
      "Description":
          "Indicates whether the button should be focused when the widget is built."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip?",
      "Description": "Controls how the button clips its content."
    },
    {
      "Property": "statesController",
      "Possible Values": "WidgetStatesController?",
      "Description": "Handles state changes for the widget."
    },
    {
      "Property": "child",
      "Possible Values": "Widget?",
      "Description": "The widget displayed inside the button."
    },
    {
      "Property": "iconAlignment",
      "Possible Values": "IconAlignment",
      "Description": "Defines the alignment of the icon in the button."
    },
  ];

  final List<Map<String, String>> TextButtonProperties = [
    {
      "Property": "onPressed",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when the button is pressed."
    },
    {
      "Property": "onLongPress",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when the button is long-pressed."
    },
    {
      "Property": "onHover",
      "Possible Values": "void Function(bool)?",
      "Description": "Callback triggered when the button is hovered over."
    },
    {
      "Property": "onFocusChange",
      "Possible Values": "void Function(bool)?",
      "Description": "Callback triggered when the button focus changes."
    },
    {
      "Property": "style",
      "Possible Values": "ButtonStyle?",
      "Description": "Defines the visual styling for the button."
    },
    {
      "Property": "focusNode",
      "Possible Values": "FocusNode?",
      "Description": "Manages focus state for the button."
    },
    {
      "Property": "autofocus",
      "Possible Values": "bool",
      "Description":
          "Indicates whether the button should be focused when the widget is built."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip?",
      "Description": "Controls how the button clips its content."
    },
    {
      "Property": "statesController",
      "Possible Values": "WidgetStatesController?",
      "Description": "Handles state changes for the widget."
    },
    {
      "Property": "isSemanticButton",
      "Possible Values": "bool?",
      "Description":
          "Specifies if the button is considered a semantic button for accessibility."
    },
    {
      "Property": "child",
      "Possible Values": "Widget",
      "Description": "The widget displayed inside the button."
    },
    {
      "Property": "iconAlignment",
      "Possible Values": "IconAlignment",
      "Description": "Defines the alignment of the icon in the button."
    },
  ];

  final List<Map<String, String>> OutlinedProperties = [
    {
      "Property": "onPressed",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when the button is pressed."
    },
    {
      "Property": "onLongPress",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when the button is long-pressed."
    },
    {
      "Property": "onHover",
      "Possible Values": "void Function(bool)?",
      "Description": "Callback triggered when the button is hovered over."
    },
    {
      "Property": "onFocusChange",
      "Possible Values": "void Function(bool)?",
      "Description": "Callback triggered when the button focus changes."
    },
    {
      "Property": "style",
      "Possible Values": "ButtonStyle?",
      "Description": "Defines the visual styling for the button."
    },
    {
      "Property": "focusNode",
      "Possible Values": "FocusNode?",
      "Description": "Manages focus state for the button."
    },
    {
      "Property": "autofocus",
      "Possible Values": "bool",
      "Description":
          "Indicates whether the button should be focused when the widget is built."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip?",
      "Description": "Controls how the button clips its content."
    },
    {
      "Property": "statesController",
      "Possible Values": "WidgetStatesController?",
      "Description": "Handles state changes for the widget."
    },
    {
      "Property": "child",
      "Possible Values": "Widget?",
      "Description": "The widget displayed inside the button."
    },
    {
      "Property": "iconAlignment",
      "Possible Values": "IconAlignment",
      "Description": "Defines the alignment of the icon in the button."
    },
  ];

  final List<Map<String, String>> IconButtonProperties = [
    {
      "Property": "iconSize",
      "Possible Values": "double?",
      "Description": "Size of the icon in the button."
    },
    {
      "Property": "visualDensity",
      "Possible Values": "VisualDensity?",
      "Description": "Adjusts the visual density of the button."
    },
    {
      "Property": "padding",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "Padding inside the button."
    },
    {
      "Property": "alignment",
      "Possible Values": "AlignmentGeometry?",
      "Description": "Alignment of the icon within the button."
    },
    {
      "Property": "splashRadius",
      "Possible Values": "double?",
      "Description": "Splash radius when the button is pressed."
    },
    {
      "Property": "color",
      "Possible Values": "Color?",
      "Description": "Color of the icon."
    },
    {
      "Property": "focusColor",
      "Possible Values": "Color?",
      "Description": "Color displayed when the button is focused."
    },
    {
      "Property": "hoverColor",
      "Possible Values": "Color?",
      "Description": "Color displayed when the button is hovered over."
    },
    {
      "Property": "highlightColor",
      "Possible Values": "Color?",
      "Description": "Color displayed when the button is highlighted."
    },
    {
      "Property": "splashColor",
      "Possible Values": "Color?",
      "Description": "Color of the splash effect when the button is pressed."
    },
    {
      "Property": "disabledColor",
      "Possible Values": "Color?",
      "Description": "Color displayed when the button is disabled."
    },
    {
      "Property": "onPressed",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when the button is pressed."
    },
    {
      "Property": "mouseCursor",
      "Possible Values": "MouseCursor?",
      "Description": "Cursor to display when hovering over the button."
    },
    {
      "Property": "focusNode",
      "Possible Values": "FocusNode?",
      "Description": "Manages focus state for the button."
    },
    {
      "Property": "autofocus",
      "Possible Values": "bool",
      "Description":
          "Indicates whether the button should be focused when the widget is built."
    },
    {
      "Property": "tooltip",
      "Possible Values": "String?",
      "Description": "Tooltip text to display when the button is hovered over."
    },
    {
      "Property": "enableFeedback",
      "Possible Values": "bool?",
      "Description": "Specifies whether feedback (like vibration) is enabled."
    },
    {
      "Property": "constraints",
      "Possible Values": "BoxConstraints?",
      "Description": "Constraints for the button's size."
    },
    {
      "Property": "style",
      "Possible Values": "ButtonStyle?",
      "Description": "Defines the visual styling for the button."
    },
    {
      "Property": "isSelected",
      "Possible Values": "bool?",
      "Description": "Indicates whether the button is selected."
    },
    {
      "Property": "selectedIcon",
      "Possible Values": "Widget?",
      "Description": "Icon to display when the button is selected."
    },
    {
      "Property": "icon",
      "Possible Values": "Widget",
      "Description": "The main icon to display in the button."
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
              "Buttons",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "In Flutter, the Button widget is used to trigger an action when pressed by the user. It serves as a crucial interactive component in building UI for mobile applications. Flutter offers a variety of button types, each designed for specific use cases, ensuring flexibility in terms of design and functionality. All button widgets in Flutter inherit from the ButtonBase class and are typically highly customizable in terms of appearance, shape, color, elevation, and behavior",
              style: TextStyle(
                color: Color(0xFFF0F0F0),
                fontSize: 17,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Types of Buttons",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
            TypeBox(
                Heading: "1 - TextButton",
                body:
                    " A simple button with text and no background by default. Ideal for subtle actions like links.",
                code: '''
TextButton(
  style: ButtonStyle(
    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: ModernStyles.borderRadius,
    )),
    backgroundColor: WidgetStatePropertyAll(Colors.transparent), // No background color
    foregroundColor: WidgetStatePropertyAll(Colors.blue), // Text color
  ),
  onPressed: () {},
  child: Text(
    'Click Me',
    style: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.blue, // Text color should match foreground
    ),
  ),
)
''',
                widget: TextButtonWidget()),
            SizedBox(
              height: 10,
            ),
            Text(
              "Styling",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
            ),
            StyleSection(
              options: TextButtonProperties,
            ),
            SizedBox(
              height: 20,
            ),
            TypeBox(
                Heading: "2 - ElevatedButton",
                body:
                    "A button with a raised appearance and shadow, used for primary actions.",
                code: '''
ElevatedButton(
  style: ButtonStyle(
    elevation: WidgetStatePropertyAll(4),
    padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: ModernStyles.borderRadius,
    )),
    backgroundColor: WidgetStatePropertyAll(Colors.blue),
    foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
  ),
  onPressed: () {},
  child: Text(
    'Click Me',
    style: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  ),
)
''',
                widget: ElevatedButtonWidget()),
            SizedBox(
              height: 10,
            ),
            Text(
              "Styling",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
            ),
            StyleSection(
              options: ElevatedProperties,
            ),
            SizedBox(
              height: 20,
            ),
            TypeBox(
                Heading: "3 - OutlinedButton",
                body:
                    "A button with an outlined border, typically for secondary actions.",
                code: '''
OutlinedButton(
  style: ButtonStyle(
    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: ModernStyles.borderRadius,
    )),
    backgroundColor: WidgetStatePropertyAll(Colors.transparent), // Transparent background
    foregroundColor: WidgetStatePropertyAll(Colors.blue), // Text color
    side: WidgetStatePropertyAll(BorderSide(color: Colors.blue, width: 2)), // Blue border
  ),
  onPressed: () {},
  child: Text(
    'Click Me',
    style: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.blue, // Text color should match foreground
    ),
  ),
),
''',
                widget: OutlinedButtonWidget()),
            SizedBox(
              height: 10,
            ),
            Text(
              "Styling",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
            ),
            StyleSection(
              options: OutlinedProperties,
            ),
            SizedBox(
              height: 20,
            ),
            TypeBox(
                Heading: "4 - IconButton",
                body:
                    "A button with an icon, commonly used for actions like favorites or navigation.",
                code: '''
IconButton(
  style: ButtonStyle(
    elevation: WidgetStatePropertyAll(4), // Adding elevation for depth
    padding: WidgetStatePropertyAll(EdgeInsets.all(12)), // Icon button usually has small padding
    backgroundColor: WidgetStatePropertyAll(Colors.blue), // Solid background color
    foregroundColor: WidgetStatePropertyAll(Colors.white), // Icon color
  ),
  onPressed: () {},
  icon: Icon(Icons.download, color: Colors.white), // White icon color
),
''',
                widget: IconButtonWidget()),
                SizedBox(
              height: 10,
            ),
            Text(
              "Styling",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
            ),
            StyleSection(
              options: IconButtonProperties,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class TypeBox extends StatelessWidget {
  final String Heading;
  final String body;
  final String code;
  final Widget widget;
  TypeBox(
      {super.key,
      required this.Heading,
      required this.body,
      required this.code,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 20,
        ),
        Text(
          Heading,
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          body,
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleCodeAndPreview(code: code, widget: widget),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}

class ButtonExample extends StatelessWidget {
  final ButtonStyle buttonStyle;
  final TextStyle buttonTextStyle;
  const ButtonExample(
      {Key? key, required this.buttonStyle, required this.buttonTextStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {},
      child: const Text('Click Me'),
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        )),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {},
      child: Text(
        'Click Me',
        style: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        )),
        backgroundColor:
            WidgetStatePropertyAll(Colors.transparent), // No background color
        foregroundColor: WidgetStatePropertyAll(Colors.blue), // Text color
      ),
      onPressed: () {},
      child: Text(
        'Click Me',
        style: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.blue, // Text color should match foreground
        ),
      ),
    );
  }
}

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        )),
        backgroundColor: WidgetStatePropertyAll(
            Colors.transparent), // Transparent background
        foregroundColor: WidgetStatePropertyAll(Colors.blue), // Text color
        side: WidgetStatePropertyAll(
            BorderSide(color: Colors.blue, width: 2)), // Blue border
      ),
      onPressed: () {},
      child: Text(
        'Click Me',
        style: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.blue, // Text color should match foreground
        ),
      ),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(4), // Adding elevation for depth
        padding: WidgetStatePropertyAll(
            EdgeInsets.all(12)), // Icon button usually has small padding
        backgroundColor:
            WidgetStatePropertyAll(Colors.blue), // Solid background color
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Icon color
      ),
      onPressed: () {},
      icon: Icon(Icons.download, color: Colors.white), // White icon color
    );
  }
}
