import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class FormPage extends StatelessWidget {
  FormPage({super.key});

  final List<Map<String, String>> properties = [
    {
      "Property": "child",
      "Possible Values": "Widget",
      "Description": "The child widget to be displayed."
    },
    {
      "Property": "canPop",
      "Possible Values": "bool?",
      "Description": "Indicates whether the widget can be popped."
    },
    {
      "Property": "onPopInvoked",
      "Possible Values": "void Function(bool)?",
      "Description":
          "Callback when a pop action is invoked, receiving a boolean indicating success."
    },
    {
      "Property": "onPopInvokedWithResult",
      "Possible Values": "void Function(bool, Object?)?",
      "Description":
          "Callback when a pop action is invoked with a result, receiving a boolean and an optional result object."
    },
    {
      "Property": "onWillPop",
      "Possible Values": "Future<bool> Function()?",
      "Description":
          "Callback triggered when a pop action is initiated, allowing for asynchronous handling."
    },
    {
      "Property": "onChanged",
      "Possible Values": "void Function()?",
      "Description": "Callback triggered when a change occurs."
    },
    {
      "Property": "autovalidateMode",
      "Possible Values": "AutovalidateMode?",
      "Description": "Defines the auto-validation mode for forms or inputs."
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
                              name: "Form",
                              Number: 10,
                              code: '''
class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF0F0F0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Colors.blue, width: 4),
                ),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Enter",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              validator: (value) =>
                  value!.isEmpty ? 'Please enter your name' : null,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                )),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Form is valid')),
                );
              }
            },
            child: Text(
              'Submit',
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
''',
                              swidget: FormExample(
                                  buttonTextStyle: ModernStyles.buttonTextStyle,
                                  borderRadius: ModernStyles.borderRadius,
                                  inputDecoration: ModernStyles.inputDecoration,
                                  buttonStyle: ModernStyles.buttonStyle)),
                          CodeAndPreviewWithSave(
                              name: "Form",
                              Number: 10,
                              code: '''
class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF5F5F5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(color: Colors.brown, width: 4),
                ),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Enter",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
              validator: (value) =>
                  value!.isEmpty ? 'Please enter your name' : null,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.brown),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                )),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Form is valid')),
                );
              }
            },
            child: Text(
              'Submit',
              style: GoogleFonts.merriweather(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
''',
                              swidget: FormExample(
                                  buttonTextStyle:
                                      ClassicStyles.buttonTextStyle,
                                  borderRadius: ClassicStyles.borderRadius,
                                  inputDecoration:
                                      ClassicStyles.inputDecoration,
                                  buttonStyle: ClassicStyles.buttonStyle)),
                          CodeAndPreviewWithSave(
                              name: "Form",
                              Number: 10,
                              code: '''
class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF2F2F2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: Color(0xFF4A4A4A)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: Color(0xFF4A4A4A)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: Color(0xFF6A5ACD), width: 4),
                ),
                hintText: "Enter",
                hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              validator: (value) =>
                  value!.isEmpty ? 'Please enter your name' : null,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF6A5ACD)),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                )),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Form is valid')),
                );
              }
            },
            child: Text(
              'Submit',
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
''',
                              swidget: FormExample(
                                  buttonTextStyle:
                                      ElegantStyles.buttonTextStyle,
                                  borderRadius: ElegantStyles.borderRadius,
                                  inputDecoration:
                                      ElegantStyles.inputDecoration,
                                  buttonStyle: ElegantStyles.buttonStyle)),
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

class FormExample extends StatelessWidget {
  final BorderRadius borderRadius;
  final InputDecoration inputDecoration;
  final ButtonStyle buttonStyle;
  final TextStyle buttonTextStyle;
  const FormExample(
      {super.key,
      required this.buttonTextStyle,
      required this.borderRadius,
      required this.inputDecoration,
      required this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
            child: TextFormField(
              decoration: inputDecoration,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter your name' : null,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: buttonStyle,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Form is valid')),
                );
              }
            },
            child: Text(
              'Submit',
              style: buttonTextStyle,
            ),
          ),
        ],
      ),
    ).paddingOnly(top: 100);
  }
}

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          Card(
            elevation: 4,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFF2F2F2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: Color(0xFF4A4A4A)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: Color(0xFF4A4A4A)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: Color(0xFF6A5ACD), width: 4),
                ),
                hintText: "Enter",
                hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              validator: (value) =>
                  value!.isEmpty ? 'Please enter your name' : null,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF6A5ACD)),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                )),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Form is valid')),
                );
              }
            },
            child: Text(
              'Submit',
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
