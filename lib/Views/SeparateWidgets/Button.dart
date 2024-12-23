import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ButtonExample extends StatelessWidget {
  const ButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {},
      child: const Text('Click Me'),
    );
  }
}