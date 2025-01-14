import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import '../MainScreens/CommonWidgets.dart';

class DatepickerPage extends StatelessWidget {
  DatepickerPage({super.key});

  final List<Map<String, String>> datePickerOptions = [
    {
      "Property": "initialDate",
      "Possible Values": "DateTime?",
      "Description": "The initial date to be displayed in the date picker."
    },
    {
      "Property": "firstDate",
      "Possible Values": "DateTime",
      "Description": "The earliest date that can be selected."
    },
    {
      "Property": "lastDate",
      "Possible Values": "DateTime",
      "Description": "The latest date that can be selected."
    },
    {
      "Property": "currentDate",
      "Possible Values": "DateTime?",
      "Description": "The current date to be displayed (default is today)."
    },
    {
      "Property": "initialEntryMode",
      "Possible Values": "DatePickerEntryMode",
      "Description":
          "The initial entry mode for the date picker, either calendar or input."
    },
    {
      "Property": "selectableDayPredicate",
      "Possible Values": "bool Function(DateTime)?",
      "Description":
          "A function to determine whether a particular day is selectable."
    },
    {
      "Property": "helpText",
      "Possible Values": "String?",
      "Description": "Text to display as a helpful instruction to the user."
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
      "Property": "locale",
      "Possible Values": "Locale?",
      "Description": "The locale for the date picker, used for formatting."
    },
    {
      "Property": "barrierDismissible",
      "Possible Values": "bool",
      "Description": "Whether tapping outside the picker should dismiss it."
    },
    {
      "Property": "barrierColor",
      "Possible Values": "Color?",
      "Description":
          "The color of the barrier around the date picker when shown."
    },
    {
      "Property": "barrierLabel",
      "Possible Values": "String?",
      "Description": "The label for the barrier in the picker."
    },
    {
      "Property": "useRootNavigator",
      "Possible Values": "bool",
      "Description": "Whether to use the root navigator for the dialog."
    },
    {
      "Property": "routeSettings",
      "Possible Values": "RouteSettings?",
      "Description": "Route settings for the date picker dialog."
    },
    {
      "Property": "textDirection",
      "Possible Values": "TextDirection?",
      "Description": "The text direction to be used for the date picker."
    },
    {
      "Property": "builder",
      "Possible Values": "Widget Function(BuildContext, Widget?)?",
      "Description":
          "A function that allows for custom widget building inside the dialog."
    },
    {
      "Property": "initialDatePickerMode",
      "Possible Values": "DatePickerMode",
      "Description": "The initial mode for the date picker (day or year)."
    },
    {
      "Property": "errorFormatText",
      "Possible Values": "String?",
      "Description": "The error message for invalid date formats."
    },
    {
      "Property": "errorInvalidText",
      "Possible Values": "String?",
      "Description": "The error message for an invalid date selection."
    },
    {
      "Property": "fieldHintText",
      "Possible Values": "String?",
      "Description": "Hint text for the input field in the date picker."
    },
    {
      "Property": "fieldLabelText",
      "Possible Values": "String?",
      "Description": "Label text for the input field in the date picker."
    },
    {
      "Property": "keyboardType",
      "Possible Values": "TextInputType?",
      "Description": "The keyboard type to be used for the input field."
    },
    {
      "Property": "anchorPoint",
      "Possible Values": "Offset?",
      "Description": "The anchor point for the date picker dialog."
    },
    {
      "Property": "onDatePickerModeChange",
      "Possible Values": "void Function(DatePickerEntryMode)?",
      "Description": "Callback for when the date picker mode changes."
    },
    {
      "Property": "switchToInputEntryModeIcon",
      "Possible Values": "Icon?",
      "Description": "Icon used to switch to input entry mode."
    },
    {
      "Property": "switchToCalendarEntryModeIcon",
      "Possible Values": "Icon?",
      "Description": "Icon used to switch to calendar entry mode."
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
              "DatePicker",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "The core date picker in Flutter is the showDatePicker function, which displays a material design calendar interface for selecting a date.",
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
              name: "Date Picker",
              number: 25,
              code: '''
class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
            'Selected Date: \${selectedDate.year}-\${selectedDate.month.toString().padLeft(2, '0')}-\${selectedDate.day.toString().padLeft(2, '0')}'),
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
            final DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: selectedDate,
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );
            if (pickedDate != null && pickedDate != selectedDate) {
              setState(() {
                selectedDate = pickedDate;
              });
            }
          },
          child: Text(
            'Pick Date',
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
''', widget: DatePickerExample()),
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
              options: datePickerOptions,
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
              "◆  Using scroll_date_picker",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleCodeAndPreview(code: '''
class ScrollDatePickerWidget extends StatefulWidget {
  @override
  _ScrollDatePickerWidgetState createState() => _ScrollDatePickerWidgetState();
}

class _ScrollDatePickerWidgetState extends State<ScrollDatePickerWidget> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        height: 300, 
        child: ScrollDatePicker(
          selectedDate: _selectedDate,
          minimumDate: DateTime(1990, 1, 1),
          maximumDate: DateTime(2025, 12, 31),
          onDateTimeChanged: (date) {
            setState(() {
              _selectedDate = date;
            });
          },
        ),
      ),
    );
  }
}
''', widget: ScrollDatePickerWidget()),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "scroll_date_picker"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code:
                  "import 'package:scroll_date_picker/scroll_date_picker.dart';",
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

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
            'Selected Date: ${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}'),
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
            final DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: selectedDate,
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );
            if (pickedDate != null && pickedDate != selectedDate) {
              setState(() {
                selectedDate = pickedDate;
              });
            }
          },
          child: Text(
            'Pick Date',
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

class ScrollDatePickerWidget extends StatefulWidget {
  const ScrollDatePickerWidget({super.key});

  @override
  _ScrollDatePickerWidgetState createState() => _ScrollDatePickerWidgetState();
}

class _ScrollDatePickerWidgetState extends State<ScrollDatePickerWidget> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        height: 300,
        child: ScrollDatePicker(
          selectedDate: _selectedDate,
          minimumDate: DateTime(1990, 1, 1),
          maximumDate: DateTime(2025, 12, 31),
          onDateTimeChanged: (date) {
            setState(() {
              _selectedDate = date;
            });
          },
        ),
      ),
    ).paddingOnly(top: 100, right: 200, bottom: 100, left: 150);
  }
}
