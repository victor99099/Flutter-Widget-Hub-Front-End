import 'package:flutter/material.dart';

import 'MainWidgets/all.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WidgetsPage(),
    );
  }
}

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Widgets Demo')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          widgetSection('Dropdown Menu', const DropdownExample()),
          widgetSection('Disclosure', const DisclosureExample()),
          widgetSection('Dialog', DialogExample()),
          widgetSection('Popover', const PopoverExample()),
          widgetSection('Tabs', const TabsExample()),
          widgetSection('Transition', const TransitionExample()),
          widgetSection('Forms', const FormExample()),
          widgetSection('Button', const ButtonExample()),
          widgetSection('Checkbox', const CheckboxExample()),
          widgetSection('Combobox', const ComboboxExample()),
          widgetSection('Fieldset', const FieldsetExample()),
          widgetSection('Input', const InputExample()),
          widgetSection('Listbox', const ListboxExample()),
          widgetSection('Radio Group', const RadioGroupExample()),
          widgetSection('Select', const SelectExample()),
          widgetSection('Switch', const SwitchExample()),
          widgetSection('Textarea', const TextareaExample()),
        ],
      ),
    );
  }

  Widget widgetSection(String title, Widget child) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            child,
          ],
        ),
      ),
    );
  }
}

