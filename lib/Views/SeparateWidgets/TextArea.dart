import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class TextareaPage extends StatelessWidget {
  const TextareaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class TextareaExample extends StatelessWidget {
  const TextareaExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: TextField(
        maxLines: 5,
        decoration: const InputDecoration(labelText: 'Enter long text'),
      ),
    );
  }
}
