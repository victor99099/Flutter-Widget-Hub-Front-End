import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Views/MainScreens/CommonWidgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';

class ComboboxPage extends StatelessWidget {
  const ComboboxPage({super.key});

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
              "ComboBox",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "A ComboBox in Flutter is a UI widget that allows users to select one option from a dropdown list or enter a custom value. It typically combines a text input field with a dropdown button, enabling both freeform input and predefined option selection. Common implementations include the DropdownButton, DropdownMenu, or custom widgets using TextField and a list of options.",
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
              name: "Combo-Box",
              number: 16,
              code: '''
class ComboboxWidget extends StatefulWidget {
  const ComboboxWidget({Key? key}) : super(key: key);

  @override
  State<ComboboxWidget> createState() => _ComboboxWidgetState();
}

class _ComboboxWidgetState extends State<ComboboxWidget> {
  TextEditingController _controller = TextEditingController();
  RxString selectedValue = 'Option 1'.obs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Enter or select an option',
              suffixIcon: Obx(
                () => DropdownButton<String>(
                  value: selectedValue.value,
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      selectedValue.value = newValue;
                      _controller.text = selectedValue.value;
                    }
                  },
                  items: <String>['Option 1', 'Option 2', 'Option 3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
''', widget: ComboboxExample()),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "get"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code: "import 'package:get/get.dart';",
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

class ComboboxExample extends StatefulWidget {
  const ComboboxExample({super.key});

  @override
  State<ComboboxExample> createState() => _ComboboxExampleState();
}

class _ComboboxExampleState extends State<ComboboxExample> {
  final TextEditingController _controller = TextEditingController();
  RxString selectedValue = 'Option 1'.obs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Enter or select an option',
              suffixIcon: Obx(
                () => DropdownButton<String>(
                  focusColor: Colors.transparent,
                  value: selectedValue.value,
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      selectedValue.value = newValue;
                      _controller.text = selectedValue.value;
                    }
                  },
                  items: <String>['Option 1', 'Option 2', 'Option 3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Combobox extends StatefulWidget {
  const Combobox({super.key});

  @override
  State<Combobox> createState() => _ComboboxState();
}

class _ComboboxState extends State<Combobox> {
  final TextEditingController _controller = TextEditingController();
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: 'Enter or select an option',
          suffixIcon: DropdownButton<String>(
            value: selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
                _controller.text = selectedValue;
              });
            },
            items: <String>['Option 1', 'Option 2', 'Option 3']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
