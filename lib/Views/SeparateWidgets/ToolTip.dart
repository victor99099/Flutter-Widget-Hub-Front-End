import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class TooltipPage extends StatelessWidget {
  const TooltipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class TooltipExample extends StatelessWidget {
  const TooltipExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'This is a tooltip!',
      child: Icon(Icons.info, color: ModernStyles.activeColor),
    );
  }
}