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
  const TextareaExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: TextField(
        maxLines: 5,
        decoration: InputDecoration(labelText: 'Enter long text'),
      ),
    );
  }
}
