import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class InputExample extends StatelessWidget {
  const InputExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: TextField(
        decoration: const InputDecoration(labelText: 'Enter text'),
      ),
    );
  }
}