import 'package:flutter/material.dart';
import '../MainScreens/CommonWidgets.dart';

class InputPage extends StatelessWidget {
  InputPage({super.key});
  final List<Map<String, String>> TextFieldProperties = [
    {
      "Property": "controller",
      "Possible Values": "TextEditingController?",
      "Description": "The controller that manages the text being edited."
    },
    {
      "Property": "decoration",
      "Possible Values": "InputDecoration?",
      "Description": "Defines the visual appearance of the text field."
    },
    {
      "Property": "keyboardType",
      "Possible Values": "TextInputType?",
      "Description": "Specifies the type of keyboard to use for input."
    },
    {
      "Property": "textInputAction",
      "Possible Values": "TextInputAction?",
      "Description":
          "Defines the action button on the keyboard (e.g., 'done', 'next')."
    },
    {
      "Property": "obscureText",
      "Possible Values": "bool",
      "Description":
          "Determines if the text input should be obscured (e.g., password field)."
    },
    {
      "Property": "focusNode",
      "Possible Values": "FocusNode?",
      "Description": "Manages focus state for the text field."
    },
    {
      "Property": "onChanged",
      "Possible Values": "ValueChanged<String>?",
      "Description": "Callback triggered when the text in the field changes."
    },
    {
      "Property": "onSubmitted",
      "Possible Values": "ValueChanged<String>?",
      "Description": "Callback triggered when the user submits the text."
    },
    {
      "Property": "enabled",
      "Possible Values": "bool",
      "Description": "Indicates whether the text field is enabled or disabled."
    },
    {
      "Property": "readOnly",
      "Possible Values": "bool",
      "Description":
          "Indicates if the text field is read-only (cannot be edited)."
    },
    {
      "Property": "maxLines",
      "Possible Values": "int?",
      "Description": "The maximum number of lines the text field can span."
    },
  ];
  final List<Map<String, String>> TextFormFieldProperties = [
    {
      "Property": "controller",
      "Possible Values": "TextEditingController?",
      "Description": "The controller that manages the text being edited."
    },
    {
      "Property": "decoration",
      "Possible Values": "InputDecoration?",
      "Description": "Defines the visual appearance of the text field."
    },
    {
      "Property": "keyboardType",
      "Possible Values": "TextInputType?",
      "Description": "Specifies the type of keyboard to use for input."
    },
    {
      "Property": "obscureText",
      "Possible Values": "bool",
      "Description":
          "Determines if the text input should be obscured (e.g., password field)."
    },
    {
      "Property": "validator",
      "Possible Values": "FormFieldValidator<String>?",
      "Description": "Callback for validating the input value."
    },
    {
      "Property": "onSaved",
      "Possible Values": "FormFieldSetter<String>?",
      "Description": "Callback triggered to save the value of the field."
    },
    {
      "Property": "onChanged",
      "Possible Values": "ValueChanged<String>?",
      "Description": "Callback triggered when the text in the field changes."
    },
    {
      "Property": "autofocus",
      "Possible Values": "bool",
      "Description":
          "Indicates whether the text field should be focused when the widget is built."
    },
    {
      "Property": "enabled",
      "Possible Values": "bool",
      "Description": "Indicates whether the text field is enabled or disabled."
    },
    {
      "Property": "readOnly",
      "Possible Values": "bool",
      "Description":
          "Indicates if the text field is read-only (cannot be edited)."
    },
    {
      "Property": "focusNode",
      "Possible Values": "FocusNode?",
      "Description": "Manages focus state for the text field."
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
              "Inputs",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "In Flutter, input fields are used to capture user input, and there are several types available for different use cases. ",
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
              "Types of Inputs",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
            TypeBox(
                Heading: "1 - TextField",
                body:
                    "A simple widget for entering a single line of text. It provides various properties like controller, keyboardType, and obscureText to customize behavior and appearance.",
                code: '''
class BasicTextField extends StatelessWidget {
  const BasicTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: const InputDecoration(
            labelText: 'Enter text',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
''',
                widget: const BasicTextFieldExample()),
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
              options: TextFieldProperties,
            ),
            const SizedBox(
              height: 20,
            ),
            TypeBox(
                Heading: "2 - TextFormField",
                body:
                    "A form-aware version of TextField, ideal for form validation.",
                code: '''
class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Enter text',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}
''',
                widget: const TextFormFieldExample()),
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
              options: TextFormFieldProperties,
            ),
            const SizedBox(
              height: 20,
            ),
            TypeBox(
                Heading: "3 - Password Input",
                body:
                    "A TextField configured to obscure characters for secure inputs like passwords.",
                code: '''
class PasswordInput extends StatefulWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          obscureText: _obscureText,
          decoration: InputDecoration(
            labelText: 'Enter password',
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
''',
                widget: const PasswordInputExample()),
            const SizedBox(
              height: 20,
            ),
            TypeBox(
                Heading: "4 - Multiline Text Input",
                body:
                    "A TextField allowing multiple lines for long inputs like comments or addresses.",
                code: '''
class MultilineTextInput extends StatelessWidget {
  const MultilineTextInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          maxLines: 5,
          decoration: const InputDecoration(
            labelText: 'Enter multiline text',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

''',
                widget: const MultilineTextInputExample()),
            const SizedBox(
              height: 20,
            ),
            TypeBox(
                Heading: "5 - Number Input",
                body:
                    "A TextField with keyboardType set to accept only numeric values.",
                code: '''
class NumberInputExample extends StatelessWidget {
  const NumberInputExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Enter number',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
''',
                widget: const NumberInputExample()),
            const SizedBox(
              height: 20,
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



class BasicTextFieldExample extends StatelessWidget {
  const BasicTextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Enter text',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class TextFormFieldExample extends StatelessWidget {
  const TextFormFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Enter text',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}

class PasswordInputExample extends StatefulWidget {
  const PasswordInputExample({super.key});

  @override
  State<PasswordInputExample> createState() => _PasswordInputExampleState();
}

class _PasswordInputExampleState extends State<PasswordInputExample> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          obscureText: _obscureText,
          decoration: InputDecoration(
            labelText: 'Enter password',
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MultilineTextInputExample extends StatelessWidget {
  const MultilineTextInputExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          maxLines: 5,
          decoration: InputDecoration(
            labelText: 'Enter multiline text',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class NumberInputExample extends StatelessWidget {
  const NumberInputExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Enter number',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
