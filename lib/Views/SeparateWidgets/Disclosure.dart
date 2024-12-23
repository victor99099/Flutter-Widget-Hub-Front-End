import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class DisclosurePage extends StatelessWidget {
  const DisclosurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DisclosureExample extends StatelessWidget {
  const DisclosureExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: ExpansionTile(
        title: const Text('Tap to Expand'),
        children: [const Text('Expanded content goes here')],
      ),
    );
  }
}