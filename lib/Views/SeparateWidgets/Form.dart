import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FormExample extends StatelessWidget {
  const FormExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: ModernStyles.borderRadius,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(
                  borderRadius: ModernStyles.borderRadius,
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (value) =>
                  value!.isEmpty ? 'Please enter your name' : null,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: getElevatedButtonStyle(),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Form is valid')),
                );
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}