import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class DropDownPage extends StatelessWidget {
  const DropDownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DropdownExample extends StatefulWidget {
  const DropdownExample({Key? key}) : super(key: key);

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: ModernStyles.borderRadius,
            borderSide: BorderSide.none,
          ),
        ),
        value: selectedValue,
        items: ['Option 1', 'Option 2', 'Option 3']
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
      ),
    );
  }
}