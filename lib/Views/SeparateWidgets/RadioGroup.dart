import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class RadioGroupExample extends StatefulWidget {
  const RadioGroupExample({Key? key}) : super(key: key);

  @override
  State<RadioGroupExample> createState() => _RadioGroupExampleState();
}

class _RadioGroupExampleState extends State<RadioGroupExample> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: Column(
        children: [
          RadioListTile<String>(
            title: const Text('Option 1'),
            value: 'Option 1',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Option 2'),
            value: 'Option 2',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}