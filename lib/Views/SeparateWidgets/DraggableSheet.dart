import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class DraggablesheetPage extends StatelessWidget {
  const DraggablesheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DraggableScrollableSheetExample extends StatefulWidget {
  const DraggableScrollableSheetExample({Key? key}) : super(key: key);

  @override
  _DraggableScrollableSheetExampleState createState() =>
      _DraggableScrollableSheetExampleState();
}

class _DraggableScrollableSheetExampleState
    extends State<DraggableScrollableSheetExample> {
  // Controller to manage the state of the DraggableScrollableSheet
  final ScrollController _scrollController = ScrollController();

  // Method to show the DraggableScrollableSheet
  void _showSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.3,
          minChildSize: 0.1,
          maxChildSize: 0.8,
          builder: (context, controller) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20), // You can customize this
              ),
              child: ListView.builder(
                controller: controller,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item ${index + 1}'),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: getElevatedButtonStyle(),
        onPressed: _showSheet,
        child: const Text('Show Draggable Sheet'),
      ),
    );
  }
}