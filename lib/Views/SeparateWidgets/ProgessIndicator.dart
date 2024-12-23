import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class IndicatorPage extends StatelessWidget {
  const IndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



// LinearProgressIndicator
class LinearProgressIndicatorExample extends StatelessWidget {
  const LinearProgressIndicatorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Loading...'),
            const SizedBox(height: 16),
            LinearProgressIndicator(
              backgroundColor: ModernStyles.baseColor,
              color: ModernStyles.activeColor,
            ),
          ],
        ),
      ),
    );
  }
}

// CircularProgressIndicator
class CircularProgressIndicatorExample extends StatelessWidget {
  const CircularProgressIndicatorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Loading...'),
            const SizedBox(height: 16),
            CircularProgressIndicator(
              backgroundColor: ModernStyles.baseColor,
              color: ModernStyles.activeColor,
            ),
          ],
        ),
      ),
    );
  }
}
