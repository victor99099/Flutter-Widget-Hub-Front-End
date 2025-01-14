import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wheel_picker/wheel_picker.dart';
import '../MainScreens/CommonWidgets.dart';

class TimepickerPage extends StatelessWidget {
  TimepickerPage({super.key});

  final List<Map<String, String>> timePickerOptions = [
    {
      "Property": "context",
      "Possible Values": "BuildContext",
      "Description": "The build context in which the time picker is displayed."
    },
    {
      "Property": "initialTime",
      "Possible Values": "TimeOfDay",
      "Description": "The initial time to display in the time picker."
    },
    {
      "Property": "builder",
      "Possible Values": "Widget Function(BuildContext, Widget?)?",
      "Description": "A custom widget builder for the time picker dialog."
    },
    {
      "Property": "barrierDismissible",
      "Possible Values": "bool",
      "Description": "Whether tapping outside the dialog dismisses it."
    },
    {
      "Property": "barrierColor",
      "Possible Values": "Color?",
      "Description": "The color of the barrier around the dialog."
    },
    {
      "Property": "barrierLabel",
      "Possible Values": "String?",
      "Description": "Label for the barrier in the time picker."
    },
    {
      "Property": "useRootNavigator",
      "Possible Values": "bool",
      "Description": "Whether to use the root navigator for the dialog."
    },
    {
      "Property": "initialEntryMode",
      "Possible Values": "TimePickerEntryMode",
      "Description": "The initial entry mode, either dial or input."
    },
    {
      "Property": "cancelText",
      "Possible Values": "String?",
      "Description": "Text for the cancel button."
    },
    {
      "Property": "confirmText",
      "Possible Values": "String?",
      "Description": "Text for the confirm button."
    },
    {
      "Property": "helpText",
      "Possible Values": "String?",
      "Description": "Text displayed as help instructions to the user."
    },
    {
      "Property": "errorInvalidText",
      "Possible Values": "String?",
      "Description": "The error message for invalid time input."
    },
    {
      "Property": "hourLabelText",
      "Possible Values": "String?",
      "Description": "Label for the hour input field."
    },
    {
      "Property": "minuteLabelText",
      "Possible Values": "String?",
      "Description": "Label for the minute input field."
    },
    {
      "Property": "routeSettings",
      "Possible Values": "RouteSettings?",
      "Description": "Settings for the route displaying the time picker."
    },
    {
      "Property": "onEntryModeChanged",
      "Possible Values": "void Function(TimePickerEntryMode)?",
      "Description": "Callback triggered when the entry mode changes."
    },
    {
      "Property": "anchorPoint",
      "Possible Values": "Offset?",
      "Description": "The anchor point for positioning the time picker dialog."
    },
    {
      "Property": "orientation",
      "Possible Values": "Orientation?",
      "Description": "Specifies the orientation of the time picker dialog."
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
              "TimePicker",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "The time picker in Flutter is accessed using the showTimePicker function, which displays a material design interface for selecting a time.",
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
              number: 26,
              name: "Time Picker",
              code: '''
class TimePickerExample extends StatefulWidget {
  const TimePickerExample({Key? key}) : super(key: key);

  @override
  State<TimePickerExample> createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text('Selected Time: \${selectedTime.format(context)}'),
        trailing: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.blue),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            )),
          ),
          onPressed: () async {
            final TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: selectedTime,
            );
            if (pickedTime != null && pickedTime != selectedTime) {
              setState(() {
                selectedTime = pickedTime;
              });
            }
          },
          child: Text(
            'Pick Time',
            style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
''', widget: TimePickerExample()),
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
              options: timePickerOptions,
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
              "◆  Using wheel_picker",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleCodeAndPreview(code: '''
class WheelPickerExample extends StatefulWidget {
  const WheelPickerExample({super.key});

  @override
  State<WheelPickerExample> createState() => _WheelPickerExampleState();
}

class _WheelPickerExampleState extends State<WheelPickerExample> {
  final now = TimeOfDay.now();
  late final _hoursWheel = WheelPickerController(
    itemCount: 12,
    initialIndex: now.hour % 12,
  );
  late final _minutesWheel = WheelPickerController(
    itemCount: 60,
    initialIndex: now.minute,
    mounts: [_hoursWheel],
  );

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 26.0, height: 1.5);
    final wheelStyle = WheelPickerStyle(
      itemExtent: textStyle.fontSize! * textStyle.height!, // Text height
      squeeze: 1.25,
      diameterRatio: .8,
      surroundingOpacity: .25,
      magnification: 1.2,
    );

    Widget itemBuilder(BuildContext context, int index) {
      return Text("\$index".padLeft(2, '0'), style: textStyle);
    }

    final timeWheels = <Widget>[
      for (final wheelController in [_hoursWheel, _minutesWheel])
        Expanded(
          child: WheelPicker(
            builder: itemBuilder,
            controller: wheelController,
            looping: wheelController == _minutesWheel,
            style: wheelStyle,
            selectedIndexColor: Colors.redAccent,
          ),
        ),
    ];
    timeWheels.insert(1, const Text(":", style: textStyle));

    final amPmWheel = Expanded(
      child: WheelPicker(
        itemCount: 2,
        builder: (context, index) {
          return Text(["AM", "PM"][index], style: textStyle);
        },
        initialIndex: (now.period == DayPeriod.am) ? 0 : 1,
        looping: false,
        style: wheelStyle.copyWith(
          shiftAnimationStyle: const WheelShiftAnimationStyle(
            duration: Duration(seconds: 1),
            curve: Curves.bounceOut,
          ),
        ),
      ),
    );

    return Center(
      child: SizedBox(
        width: 200.0,
        height: 200.0,
        child: Stack(
          fit: StackFit.expand,
          children: [
            _centerBar(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  ...timeWheels,
                  const SizedBox(width: 6.0),
                  amPmWheel,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Don't forget to dispose the controllers at the end.
    _hoursWheel.dispose();
    _minutesWheel.dispose();
    super.dispose();
  }

  Widget _centerBar(BuildContext context) {
    return Center(
      child: Container(
        height: 38.0,
        decoration: BoxDecoration(
          color: const Color(0xFFC3C9FA).withAlpha(26),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
''', widget: WheelPickerExample()),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "wheel_picker"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code: "import 'package:wheel_picker/wheel_picker.dart';",
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

class TimePickerExample extends StatefulWidget {
  const TimePickerExample({super.key});

  @override
  State<TimePickerExample> createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text('Selected Time: ${selectedTime.format(context)}'),
        trailing: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.blue),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            )),
          ),
          onPressed: () async {
            final TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: selectedTime,
            );
            if (pickedTime != null && pickedTime != selectedTime) {
              setState(() {
                selectedTime = pickedTime;
              });
            }
          },
          child: Text(
            'Pick Time',
            style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class WheelPickerExample extends StatefulWidget {
  const WheelPickerExample({super.key});

  @override
  State<WheelPickerExample> createState() => _WheelPickerExampleState();
}

class _WheelPickerExampleState extends State<WheelPickerExample> {
  final now = TimeOfDay.now();
  late final _hoursWheel = WheelPickerController(
    itemCount: 12,
    initialIndex: now.hour % 12,
  );
  late final _minutesWheel = WheelPickerController(
    itemCount: 60,
    initialIndex: now.minute,
    mounts: [_hoursWheel],
  );

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 26.0, height: 1.5);
    final wheelStyle = WheelPickerStyle(
      itemExtent: textStyle.fontSize! * textStyle.height!, // Text height
      squeeze: 1.25,
      diameterRatio: .8,
      surroundingOpacity: .25,
      magnification: 1.2,
    );

    Widget itemBuilder(BuildContext context, int index) {
      return Text("$index".padLeft(2, '0'), style: textStyle);
    }

    final timeWheels = <Widget>[
      for (final wheelController in [_hoursWheel, _minutesWheel])
        Expanded(
          child: WheelPicker(
            builder: itemBuilder,
            controller: wheelController,
            looping: wheelController == _minutesWheel,
            style: wheelStyle,
            selectedIndexColor: Colors.redAccent,
          ),
        ),
    ];
    timeWheels.insert(1, const Text(":", style: textStyle));

    final amPmWheel = Expanded(
      child: WheelPicker(
        itemCount: 2,
        builder: (context, index) {
          return Text(["AM", "PM"][index], style: textStyle);
        },
        initialIndex: (now.period == DayPeriod.am) ? 0 : 1,
        looping: false,
        style: wheelStyle.copyWith(
          shiftAnimationStyle: const WheelShiftAnimationStyle(
            duration: Duration(seconds: 1),
            curve: Curves.bounceOut,
          ),
        ),
      ),
    );

    return SizedBox(
      width: 250.0,
      height: 210.0,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
        child: Center(
          child: SizedBox(
            width: 200.0,
            height: 200.0,
            child: Stack(
              fit: StackFit.expand,
              children: [
                _centerBar(context),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      ...timeWheels,
                      const SizedBox(width: 6.0),
                      amPmWheel,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Don't forget to dispose the controllers at the end.
    _hoursWheel.dispose();
    _minutesWheel.dispose();
    super.dispose();
  }

  Widget _centerBar(BuildContext context) {
    return Center(
      child: Container(
        height: 38.0,
        decoration: BoxDecoration(
          color: const Color(0xFFC3C9FA).withAlpha(26),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
