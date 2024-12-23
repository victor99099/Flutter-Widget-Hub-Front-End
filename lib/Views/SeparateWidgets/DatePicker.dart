import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class DatepickerPage extends StatelessWidget {
  const DatepickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({Key? key}) : super(key: key);

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
        borderRadius: ModernStyles.borderRadius,
      ),
      child: ListTile(
        title: Text(
            'Selected Date: ${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}'),
        trailing: ElevatedButton(
          style: getElevatedButtonStyle(),
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
          child: const Text('Pick Date'),
        ),
      ),
    );
  }
}
