import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class ToastNotificationExample extends StatelessWidget {
  const ToastNotificationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {
        final snackBar = SnackBar(
          content: const Text('This is a toast notification!'),
          behavior: SnackBarBehavior.floating,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: const Text('Show Toast'),
    );
  }
}
