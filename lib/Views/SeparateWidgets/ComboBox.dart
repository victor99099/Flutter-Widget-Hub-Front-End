import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class ComboboxPage extends StatelessWidget {
  const ComboboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ComboboxExample extends StatefulWidget {
  const ComboboxExample({Key? key}) : super(key: key);

  @override
  State<ComboboxExample> createState() => _ComboboxExampleState();
}

class _ComboboxExampleState extends State<ComboboxExample> {
  TextEditingController _controller = TextEditingController();
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
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