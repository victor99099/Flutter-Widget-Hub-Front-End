import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class PopoverPage extends StatelessWidget {
  const PopoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class PopoverExample extends StatelessWidget {
  const PopoverExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: PopupMenuButton<String>(
        icon: const Icon(Icons.more_vert, color: ModernStyles.activeColor),
        itemBuilder: (context) => [
          const PopupMenuItem(value: 'Item 1', child: Text('Item 1')),
          const PopupMenuItem(value: 'Item 2', child: Text('Item 2')),
        ],
      ),
    );
  }
}