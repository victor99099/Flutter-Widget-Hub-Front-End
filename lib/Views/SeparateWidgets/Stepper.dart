import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class StepperPage extends StatelessWidget {
  const StepperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class StepperExample extends StatefulWidget {
  const StepperExample({Key? key}) : super(key: key);

  @override
  _StepperExampleState createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: Stepper(
        currentStep: currentStep,
        onStepContinue:
            currentStep < 2 ? () => setState(() => currentStep += 1) : null,
        onStepCancel:
            currentStep > 0 ? () => setState(() => currentStep -= 1) : null,
        steps: [
          Step(
            title: Text('Step 1'),
            content: const Text('This is step 1 content'),
            isActive: currentStep >= 0,
          ),
          Step(
            title: Text('Step 2'),
            content: const Text('This is step 2 content'),
            isActive: currentStep >= 1,
          ),
          Step(
            title: Text('Step 3'),
            content: const Text('This is step 3 content'),
            isActive: currentStep >= 2,
          ),
        ],
      ),
    );
  }
}