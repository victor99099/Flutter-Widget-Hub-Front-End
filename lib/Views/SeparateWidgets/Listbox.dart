import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class ListboxPage extends StatelessWidget {
  const ListboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ListboxExample extends StatelessWidget {
  const ListboxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: ListView(
        shrinkWrap: true,
        children: const [
          ListTile(title: Text('Item 1')),
          ListTile(title: Text('Item 2')),
          ListTile(title: Text('Item 3')),
        ],
      ),
    );
  }
}