import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Ccontrollers/PageController.dart';
import 'package:flutterwidgethub/Views/MainScreens/CommonWidgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';

class StepperPage extends StatelessWidget {
  StepperPage({super.key});

  final List<Map<String, String>> stepperProperties = [
    {
      "Property": "steps",
      "Possible Values": "List<Step>",
      "Description": "The list of steps that make up the stepper."
    },
    {
      "Property": "controller",
      "Possible Values": "ScrollController?",
      "Description":
          "The scroll controller to control the stepper scroll behavior."
    },
    {
      "Property": "physics",
      "Possible Values": "ScrollPhysics?",
      "Description": "The physics used for the scrollable stepper."
    },
    {
      "Property": "type",
      "Possible Values": "StepperType",
      "Description": "The type of stepper, either vertical or horizontal."
    },
    {
      "Property": "currentStep",
      "Possible Values": "int",
      "Description": "The index of the currently active step."
    },
    {
      "Property": "onStepTapped",
      "Possible Values": "void Function(int)?",
      "Description": "Callback triggered when a step is tapped."
    },
    {
      "Property": "onStepContinue",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when the continue button is pressed."
    },
    {
      "Property": "onStepCancel",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when the cancel button is pressed."
    },
    {
      "Property": "controlsBuilder",
      "Possible Values": "Widget Function(BuildContext, ControlsDetails)?",
      "Description": "A custom builder for the control buttons."
    },
    {
      "Property": "elevation",
      "Possible Values": "double?",
      "Description": "The elevation of the stepper."
    },
    {
      "Property": "margin",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "The margin around the stepper."
    },
    {
      "Property": "connectorColor",
      "Possible Values": "WidgetStateProperty<Color>?",
      "Description": "The color of the connector between steps."
    },
    {
      "Property": "connectorThickness",
      "Possible Values": "double?",
      "Description": "The thickness of the connector line between steps."
    },
    {
      "Property": "stepIconBuilder",
      "Possible Values": "Widget? Function(int, StepState)?",
      "Description": "A custom builder for the step icons."
    },
    {
      "Property": "stepIconHeight",
      "Possible Values": "double?",
      "Description": "The height of the step icons."
    },
    {
      "Property": "stepIconWidth",
      "Possible Values": "double?",
      "Description": "The width of the step icons."
    },
    {
      "Property": "stepIconMargin",
      "Possible Values": "EdgeInsets?",
      "Description": "The margin around the step icons."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip",
      "Description": "The clipping behavior of the stepper."
    },
  ];

  final List<Map<String, String>> stepProperties = [
    {
      "Property": "title",
      "Possible Values": "Widget",
      "Description": "The main title of the step."
    },
    {
      "Property": "subtitle",
      "Possible Values": "Widget?",
      "Description": "An optional subtitle for the step."
    },
    {
      "Property": "content",
      "Possible Values": "Widget",
      "Description": "The content of the step that will be displayed."
    },
    {
      "Property": "state",
      "Possible Values": "StepState",
      "Description": "The state of the step (indexed, editing, complete, etc.)."
    },
    {
      "Property": "isActive",
      "Possible Values": "bool",
      "Description": "Indicates whether the step is currently active."
    },
    {
      "Property": "label",
      "Possible Values": "Widget?",
      "Description": "An optional label for the step."
    },
    {
      "Property": "stepStyle",
      "Possible Values": "StepStyle?",
      "Description": "An optional custom style for the step."
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
              "Stepper",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "The Stepper widget in Flutter is a vertical or horizontal navigation control that allows users to go through a sequence of steps. It displays steps with titles, content, and controls to move between them. It supports customizing the stepper's appearance, behavior, and control buttons. Each step can have different states such as 'indexed', 'editing', or 'complete', and the user can navigate through them by tapping, continuing, or canceling actions. The Stepper is commonly used for multi-step forms or processes.",
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
            SingleCodeAndPreview(code:'''
class StepperWidget extends StatefulWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: Stepper(
        currentStep: currentStep,
        onStepContinue:
            currentStep < 2 ? () => setState(() => currentStep += 1) : null,
        onStepCancel:
            currentStep > 0 ? () => setState(() => currentStep -= 1) : null,
        steps: [
          Step(
            title: Text('Step 1'),
            content: const Text('This is step 1 content'),
            isActive: currentStep >= 0,
          ),
          Step(
            title: Text('Step 2'),
            content: const Text('This is step 2 content'),
            isActive: currentStep >= 1,
          ),
          Step(
            title: Text('Step 3'),
            content: const Text('This is step 3 content'),
            isActive: currentStep >= 2,
          ),
        ],
      ),
    );
  }
}
''', widget: StepperExample()),
            SizedBox(
              height: 20,
            ),
            Text(
              "Styling For Stepper()",
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
              options: stepperProperties,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Styling for Step()",
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
              options: stepProperties,
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

class StepperExample extends StatefulWidget {
  const StepperExample({Key? key}) : super(key: key);

  @override
  _StepperExampleState createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: Stepper(
        currentStep: currentStep,
        onStepContinue:
            currentStep < 2 ? () => setState(() => currentStep += 1) : null,
        onStepCancel:
            currentStep > 0 ? () => setState(() => currentStep -= 1) : null,
        steps: [
          Step(
            title: Text('Step 1'),
            content: const Text('This is step 1 content'),
            isActive: currentStep >= 0,
          ),
          Step(
            title: Text('Step 2'),
            content: const Text('This is step 2 content'),
            isActive: currentStep >= 1,
          ),
          Step(
            title: Text('Step 3'),
            content: const Text('This is step 3 content'),
            isActive: currentStep >= 2,
          ),
        ],
      ),
    ).paddingOnly(right: 200);
  }
}
