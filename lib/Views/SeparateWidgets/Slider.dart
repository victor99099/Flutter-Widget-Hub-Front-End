import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Views/MainScreens/CommonWidgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:input_slider/input_slider.dart';
import 'package:interactive_slider/interactive_slider.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:squiggly_slider/slider.dart';

import '../../Styles/styles.dart';

class SliderPage extends StatelessWidget {
  SliderPage({super.key});

  final List<Map<String, String>> options = [
    {
      "Property": "value",
      "Possible Values": "required double",
      "Description": "The current value of the slider."
    },
    {
      "Property": "secondaryTrackValue",
      "Possible Values": "double?",
      "Description": "The value of the secondary track of the slider."
    },
    {
      "Property": "onChanged",
      "Possible Values": "required void Function(double)?",
      "Description": "Callback function called when the slider value changes."
    },
    {
      "Property": "onChangeStart",
      "Possible Values": "void Function(double)?",
      "Description":
          "Callback triggered when the user starts changing the value."
    },
    {
      "Property": "onChangeEnd",
      "Possible Values": "void Function(double)?",
      "Description":
          "Callback triggered when the user stops changing the value."
    },
    {
      "Property": "min",
      "Possible Values": "double",
      "Description": "The minimum value of the slider."
    },
    {
      "Property": "max",
      "Possible Values": "double",
      "Description": "The maximum value of the slider."
    },
    {
      "Property": "divisions",
      "Possible Values": "int?",
      "Description": "The number of discrete divisions the slider should have."
    },
    {
      "Property": "label",
      "Possible Values": "String?",
      "Description": "A label to display for the current value of the slider."
    },
    {
      "Property": "activeColor",
      "Possible Values": "Color?",
      "Description": "The color of the slider's active track."
    },
    {
      "Property": "inactiveColor",
      "Possible Values": "Color?",
      "Description": "The color of the slider's inactive track."
    },
    {
      "Property": "secondaryActiveColor",
      "Possible Values": "Color?",
      "Description": "The color of the secondary active track."
    },
    {
      "Property": "thumbColor",
      "Possible Values": "Color?",
      "Description": "The color of the slider's thumb (draggable part)."
    },
    {
      "Property": "overlayColor",
      "Possible Values": "WidgetStateProperty<Color?>?",
      "Description": "The color of the overlay when the thumb is pressed."
    },
    {
      "Property": "mouseCursor",
      "Possible Values": "MouseCursor?",
      "Description":
          "The mouse cursor that should be displayed when hovering over the slider."
    },
    {
      "Property": "semanticFormatterCallback",
      "Possible Values": "String Function(double)?",
      "Description":
          "A callback that formats the semantic label for the slider."
    },
    {
      "Property": "focusNode",
      "Possible Values": "FocusNode?",
      "Description": "The focus node for the slider."
    },
    {
      "Property": "autofocus",
      "Possible Values": "bool",
      "Description":
          "Whether the slider should automatically receive focus when the widget is built."
    },
    {
      "Property": "allowedInteraction",
      "Possible Values": "SliderInteraction?",
      "Description": "Controls which interactions are allowed on the slider."
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
                "Sliders",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "The Slider widget in Flutter is used to select a value from a range by dragging a thumb along a horizontal or vertical track. It allows users to input continuous values, typically for adjusting settings like volume or brightness.",
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
                name: "Slider",
                number: 33,
                code: '''
class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 170,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius:  BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Adjust value:'),
              const SizedBox(height: 3),
              Slider(
                value: _sliderValue,
                min: 0,
                max: 100,
                divisions: 100,
                label: _sliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
              const SizedBox(height: 3),
              Text('Current value: \${_sliderValue.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}
''', widget: SliderExample()),
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
                "◆  Using input_slider",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const SingleCodeAndPreview(code: '''
class InputSliderWidget extends StatefulWidget {
  const InputSliderWidget({super.key});

  @override
  _InputSliderWidgetState createState() => _InputSliderWidgetState();
}

class _InputSliderWidgetState extends State<InputSliderWidget> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 130,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius:  BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Adjust value:'),
              const SizedBox(height: 3),
              InputSlider(
                onChange: (value) => setState(() {
                  value = value;
                }),
                min: 0.0,
                max: 100.0,
                decimalPlaces: 0,
                defaultValue: 50.0,
                leading: Text("Percentage:"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
''', widget: InputSliderExample()),
              const SizedBox(
                height: 10,
              ),
              const TerminalRun(package: "input_slider"),
              const SizedBox(
                height: 10,
              ),
              const ImportCopyContainer(
                code: "import 'package:input_slider/input_slider.dart';",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "◆  Using interactive_slider",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const SingleCodeAndPreview(code: '''
class InteractiveSliderWidget extends StatefulWidget {
  const InteractiveSliderWidget({super.key});

  @override
  _InteractiveSliderWidgetState createState() =>
      _InteractiveSliderWidgetState();
}

class _InteractiveSliderWidgetState extends State<InteractiveSliderWidget> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      height: 120,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius:  BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: InteractiveSlider(
            startIcon: const Icon(CupertinoIcons.volume_down),
            centerIcon: const Text('Center'),
            endIcon: const Icon(CupertinoIcons.volume_up),
            min: 1.0,
            max: 15.0,
            onChanged: (value) => setState(() => value = value),
          ),
        ),
      ),
    );
  }
}
''', widget: InteractiveSliderExample()),
              const SizedBox(
                height: 10,
              ),
              const TerminalRun(package: "interactive_slider"),
              const SizedBox(
                height: 10,
              ),
              const ImportCopyContainer(
                code:
                    "import 'package:interactive_slider/interactive_slider.dart';",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "◆  Using squiggly_slider",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const SingleCodeAndPreview(code: '''
class SquigglySliderWidget extends StatefulWidget {
  const SquigglySliderWidget({super.key});

  @override
  _SquigglySliderWidgetState createState() => _SquigglySliderWidgetState();
}

class _SquigglySliderWidgetState extends State<SquigglySliderWidget> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 170,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius:  BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Adjust value:'),
              const SizedBox(height: 3),
              SquigglySlider(
                value: _sliderValue,
                min: 0,
                max: 100,
                divisions: 100,
                label: _sliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
                squiggleAmplitude: 5.0,
                squiggleWavelength: 5.0,
                squiggleSpeed: 0.3,
              ),
              const SizedBox(height: 3),
              Text('Current value: \${_sliderValue.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}
''', widget: SquigglySliderExample()),
              const SizedBox(
                height: 10,
              ),
              const TerminalRun(package: "squiggly_slider"),
              const SizedBox(
                height: 10,
              ),
              const ImportCopyContainer(
                code: "import 'package:squiggly_slider/squiggly_slider.dart';",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "◆  Using sleek_circular_slider",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const SingleCodeAndPreview(code: '''
class SleekCircularSliderWidget extends StatefulWidget {
  const SleekCircularSliderWidget({super.key});

  @override
  _SleekCircularSliderWidgetState createState() =>
      _SleekCircularSliderWidgetState();
}

class _SleekCircularSliderWidgetState
    extends State<SleekCircularSliderWidget> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius:  BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Adjust value:'),
              const SizedBox(height: 3),
              SleekCircularSlider(
                appearance: CircularSliderAppearance(
                  spinnerMode: false,
                ),
                onChange: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
                min: 0.0,
                max: 100.0,
                initialValue: 10,
              ),
              const SizedBox(height: 3),
              Text('Current value: \${_sliderValue.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}
''', widget: SleekCircularSliderExample()),
              const SizedBox(
                height: 10,
              ),
              const TerminalRun(package: "sleek_circular_slider"),
              const SizedBox(
                height: 10,
              ),
              const ImportCopyContainer(
                code:
                    "import 'package:sleek_circular_slider/sleek_circular_slider.dart';",
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 170,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Adjust value:'),
              const SizedBox(height: 3),
              Slider(
                value: _sliderValue,
                min: 0,
                max: 100,
                divisions: 100,
                label: _sliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
              const SizedBox(height: 3),
              Text('Current value: ${_sliderValue.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}
class SliderExample2 extends StatefulWidget {
  final Color activeColor;
  const SliderExample2({super.key, required this.activeColor});

  @override
  _SliderExample2State createState() => _SliderExample2State();
}

class _SliderExample2State extends State<SliderExample2> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 170,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Adjust value:'),
              const SizedBox(height: 3),
              Slider(
                thumbColor: widget.activeColor,
                activeColor: widget.activeColor,
                value: _sliderValue,
                min: 0,
                max: 100,
                divisions: 100,
                label: _sliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
              const SizedBox(height: 3),
              Text('Current value: ${_sliderValue.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}

class InputSliderExample extends StatefulWidget {
  const InputSliderExample({super.key});

  @override
  _InputSliderExampleState createState() => _InputSliderExampleState();
}

class _InputSliderExampleState extends State<InputSliderExample> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 130,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Adjust value:'),
              const SizedBox(height: 3),
              InputSlider(
                onChange: (value) => setState(() {
                  value = value;
                }),
                min: 0.0,
                max: 100.0,
                decimalPlaces: 0,
                defaultValue: 50.0,
                leading: const Text("Percentage:"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InteractiveSliderExample extends StatefulWidget {
  const InteractiveSliderExample({super.key});

  @override
  _InteractiveSliderExampleState createState() =>
      _InteractiveSliderExampleState();
}

class _InteractiveSliderExampleState extends State<InteractiveSliderExample> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      height: 120,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: InteractiveSlider(
            startIcon: const Icon(CupertinoIcons.volume_down),
            centerIcon: const Text('Center'),
            endIcon: const Icon(CupertinoIcons.volume_up),
            min: 1.0,
            max: 15.0,
            onChanged: (value) => setState(() => value = value),
          ),
        ),
      ),
    );
  }
}

class SquigglySliderExample extends StatefulWidget {
  const SquigglySliderExample({super.key});

  @override
  _SquigglySliderExampleState createState() => _SquigglySliderExampleState();
}

class _SquigglySliderExampleState extends State<SquigglySliderExample> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 170,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Adjust value:'),
              const SizedBox(height: 3),
              SquigglySlider(
                value: _sliderValue,
                min: 0,
                max: 100,
                divisions: 100,
                label: _sliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
                squiggleAmplitude: 5.0,
                squiggleWavelength: 5.0,
                squiggleSpeed: 0.3,
              ),
              const SizedBox(height: 3),
              Text('Current value: ${_sliderValue.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}

class SleekCircularSliderExample extends StatefulWidget {
  const SleekCircularSliderExample({super.key});

  @override
  _SleekCircularSliderExampleState createState() =>
      _SleekCircularSliderExampleState();
}

class _SleekCircularSliderExampleState
    extends State<SleekCircularSliderExample> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Adjust value:'),
              const SizedBox(height: 3),
              SleekCircularSlider(
                appearance: const CircularSliderAppearance(
                  spinnerMode: false,
                ),
                onChange: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
                min: 0.0,
                max: 100.0,
                initialValue: 10,
              ),
              const SizedBox(height: 3),
              Text('Current value: ${_sliderValue.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}
