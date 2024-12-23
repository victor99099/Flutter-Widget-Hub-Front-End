import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Dialog Title'),
            content: const Text('This is the dialog content'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
      child: const Text('Show Dialog'),
    );
  }
}