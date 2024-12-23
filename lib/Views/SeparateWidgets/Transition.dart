import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class TransitionPage extends StatelessWidget {
  const TransitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class TransitionExample extends StatelessWidget {
  const TransitionExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ),
            transitionsBuilder: (_, animation, __, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}
