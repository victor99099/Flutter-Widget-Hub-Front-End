import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class IndicatorPage extends StatelessWidget {
  IndicatorPage({super.key});
  final List<Map<String, String>> LinearProgressIndicatorProperties = [
    {
      "Property": "value",
      "Possible Values": "double?",
      "Description":
          "Specifies the current progress value (used for determinate progress)."
    },
    {
      "Property": "backgroundColor",
      "Possible Values": "Color?",
      "Description": "The background color of the progress indicator."
    },
    {
      "Property": "color",
      "Possible Values": "Color?",
      "Description": "The color of the progress indicator's progress bar."
    },
    {
      "Property": "valueColor",
      "Possible Values": "Animation<Color?>?",
      "Description": "Defines the animation of the progress indicator's color."
    },
    {
      "Property": "minHeight",
      "Possible Values": "double?",
      "Description": "The minimum height of the progress indicator."
    },
    {
      "Property": "semanticsLabel",
      "Possible Values": "String?",
      "Description": "Label for the progress indicator, used for accessibility."
    },
    {
      "Property": "semanticsValue",
      "Possible Values": "String?",
      "Description": "Value of the progress indicator, used for accessibility."
    },
    {
      "Property": "borderRadius",
      "Possible Values": "BorderRadiusGeometry",
      "Description": "Defines the border radius of the progress indicator."
    },
  ];

  final List<Map<String, String>> CircularProgressIndicatorProperties = [
    {
      "Property": "value",
      "Possible Values": "double?",
      "Description":
          "Specifies the current progress value (used for determinate progress)."
    },
    {
      "Property": "backgroundColor",
      "Possible Values": "Color?",
      "Description": "The background color of the progress indicator."
    },
    {
      "Property": "color",
      "Possible Values": "Color?",
      "Description": "The color of the progress indicator's progress bar."
    },
    {
      "Property": "valueColor",
      "Possible Values": "Animation<Color?>?",
      "Description": "Defines the animation of the progress indicator's color."
    },
    {
      "Property": "strokeWidth",
      "Possible Values": "double",
      "Description":
          "Specifies the width of the stroke (used for CircularProgressIndicator)."
    },
    {
      "Property": "strokeAlign",
      "Possible Values": "StrokeAlign",
      "Description":
          "Defines the alignment of the stroke (used for CircularProgressIndicator)."
    },
    {
      "Property": "semanticsLabel",
      "Possible Values": "String?",
      "Description": "Label for the progress indicator, used for accessibility."
    },
    {
      "Property": "semanticsValue",
      "Possible Values": "String?",
      "Description": "Value of the progress indicator, used for accessibility."
    },
    {
      "Property": "strokeCap",
      "Possible Values": "StrokeCap?",
      "Description":
          "Defines the shape of the stroke's end (used for CircularProgressIndicator)."
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
              "Progress Indicator",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "The Flutter Progress Indicator widget visually represents task progress, with LinearProgressIndicator for horizontal progress and CircularProgressIndicator for a circular spinner, both supporting determinate (specific progress) or indeterminate (unknown progress) states.",
              style: TextStyle(
                color: Color(0xFFF0F0F0),
                fontSize: 17,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Types of Indicators",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
            const TypeBoxWithSave(
                name: "Linear Progress Indicator",
                number: 31,
                Heading: "1 - Linear Progress Indicator",
                body: "A horizontal bar for linear progress.",
                code: '''
LinearProgressIndicator(
  backgroundColor: Colors.grey,
  color: Colors.blue,
),
''',
                widget: LinearProgressIndicatorExample()),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Styling",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 10,
            ),
            StyleSection(
              options: LinearProgressIndicatorProperties,
            ),
            const SizedBox(
              height: 20,
            ),
            const TypeBoxWithSave(
                name: "Circular Progress Indicator",
                number: 32,
                Heading: "2 - Circular Progress Indicator",
                body: "A circular spinner for circular progress.",
                code: '''
CircularProgressIndicator(
  backgroundColor: Colors.grey,
  color: Colors.blue,
),
''',
                widget: CircularProgressIndicatorExample()),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Styling",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 10,
            ),
            StyleSection(
              options: CircularProgressIndicatorProperties,
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
              "◆  Using liquid_progress_indicator_v2",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const TypeBox(
                Heading: "1 - Linear Liquid Progress Indicator",
                body: "A horizontal bar for linear progress.",
                code: '''
LiquidLinearProgressIndicator(
  value: 0.25, // Defaults to 0.5.
  valueColor: AlwaysStoppedAnimation(
      Colors.blue), // Defaults to the current Theme's accentColor.
  backgroundColor: Colors
      .white, // Defaults to the current Theme's backgroundColor.
  borderColor: Colors.grey,
  borderWidth: 5.0,
  borderRadius: 12.0,
  direction: Axis
      .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
  center: Text("Loading..."),
),
''',
                widget: LiquidLinearProgressIndicatorExample()),
            const SizedBox(
              height: 20,
            ),
            const TypeBox(
                Heading: "2 - Circular Liquid Progress Indicator",
                body: "A circular spinner for circular progress.",
                code: '''
LiquidCircularProgressIndicator(
  value: 0.25, // Defaults to 0.5.
  valueColor: AlwaysStoppedAnimation(
      Colors.blue), // Defaults to the current Theme's accentColor.
  backgroundColor: Colors
      .white, // Defaults to the current Theme's backgroundColor.
  borderColor: Colors.grey,
  borderWidth: 5.0,
  direction: Axis
      .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
  center: Text("Loading..."),
),
''',
                widget: LiquidCircularProgressIndicatorExample()),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "liquid_progress_indicator_v2"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code:
                  "import 'package:liquid_progress_indicator_v2/liquid_progress_indicator_v2.dart';",
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

// LinearProgressIndicator
class LinearProgressIndicatorExample extends StatelessWidget {
  const LinearProgressIndicatorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      height: 80,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Loading...'),
              SizedBox(height: 16),
              LinearProgressIndicator(
                backgroundColor: ModernStyles.baseColor,
                color: ModernStyles.activeColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CircularProgressIndicator
class CircularProgressIndicatorExample extends StatelessWidget {
  const CircularProgressIndicatorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 160,
      height: 130,
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Loading...'),
              SizedBox(height: 16),
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: ModernStyles.activeColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LinearProgressIndicatorExample2 extends StatelessWidget {
  final Color activeColor;
  const LinearProgressIndicatorExample2({super.key, required this.activeColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 80,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Loading...'),
              const SizedBox(height: 16),
              LinearProgressIndicator(
                backgroundColor: ModernStyles.baseColor,
                color: activeColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CircularProgressIndicator
class CircularProgressIndicatorExample2 extends StatelessWidget {
  final Color activeColor;
  const CircularProgressIndicatorExample2(
      {super.key, required this.activeColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 130,
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Loading...'),
              const SizedBox(height: 16),
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: activeColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LiquidLinearProgressIndicatorExample extends StatelessWidget {
  const LiquidLinearProgressIndicatorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 120,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LiquidLinearProgressIndicator(
            value: 0.25, // Defaults to 0.5.
            valueColor: const AlwaysStoppedAnimation(
                Colors.blue), // Defaults to the current Theme's accentColor.
            backgroundColor: Colors
                .white, // Defaults to the current Theme's backgroundColor.
            borderColor: Colors.grey,
            borderWidth: 5.0,
            borderRadius: 12.0,
            direction: Axis
                .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
            center: const Text("Loading..."),
          ),
        ),
      ),
    );
  }
}

// CircularProgressIndicator
class LiquidCircularProgressIndicatorExample extends StatelessWidget {
  const LiquidCircularProgressIndicatorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LiquidCircularProgressIndicator(
            value: 0.25, // Defaults to 0.5.
            valueColor: const AlwaysStoppedAnimation(
                Colors.blue), // Defaults to the current Theme's accentColor.
            backgroundColor: Colors
                .white, // Defaults to the current Theme's backgroundColor.
            borderColor: Colors.grey,
            borderWidth: 5.0,
            direction: Axis
                .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
            center: const Text("Loading..."),
          ),
        ),
      ),
    );
  }
}
