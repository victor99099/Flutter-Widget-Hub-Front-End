import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class TimepickerPage extends StatelessWidget {
  const TimepickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


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
        borderRadius: ModernStyles.borderRadius,
      ),
      child: ListTile(
        title: Text('Selected Time: ${selectedTime.format(context)}'),
        trailing: ElevatedButton(
          style: getElevatedButtonStyle(),
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
          child: const Text('Pick Time'),
        ),
      ),
    );
  }
}
