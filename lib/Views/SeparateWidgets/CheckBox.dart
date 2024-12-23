import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class CheckboxPage extends StatelessWidget {
  const CheckboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}




class CheckboxExample extends StatefulWidget {
  const CheckboxExample({Key? key}) : super(key: key);

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: CheckboxListTile(
        title: const Text('Check this box'),
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
        activeColor: ModernStyles.activeColor,
      ),
    );
  }
}
