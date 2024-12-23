// Dropdown Menu
import 'package:flutter/material.dart';

class DropdownExample extends StatefulWidget {
  const DropdownExample({Key? key}) : super(key: key);

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String selectedValue = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
      items: <String>['Option 1', 'Option 2', 'Option 3']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

// Disclosure Example
class DisclosureExample extends StatelessWidget {
  const DisclosureExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Tap to Expand'),
      children: [const Text('Expanded content goes here')],
    );
  }
}

// Dialog Example
class DialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Dialog Title'),
            content: const Text('This is the dialog content'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Close')),
            ],
          ),
        );
      },
      child: const Text('Show Dialog'),
    );
  }
}

// Popover Example
class PopoverExample extends StatelessWidget {
  const PopoverExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {},
      itemBuilder: (context) => [
        const PopupMenuItem(value: 'Item 1', child: Text('Item 1')),
        const PopupMenuItem(value: 'Item 2', child: Text('Item 2')),
      ],
    );
  }
}

// Tabs Example
class TabsExample extends StatelessWidget {
  const TabsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(tabs: [Tab(text: 'Tab 1'), Tab(text: 'Tab 2')]),
          Container(
            height: 100,
            child: const TabBarView(
                children: [Text('Content 1'), Text('Content 2')]),
          ),
        ],
      ),
    );
  }
}

// Transition Example
class TransitionExample extends StatelessWidget {
  const TransitionExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.push(
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
      ),
      child: const Text('Transition to New Page'),
    );
  }
}

// Form Example
class FormExample extends StatelessWidget {
  const FormExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Name'),
            validator: (value) =>
                value!.isEmpty ? 'Please enter your name' : null,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Form is valid')));
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}

// Button Example
class ButtonExample extends StatelessWidget {
  const ButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Click Me'),
    );
  }
}

// Checkbox Example
class CheckboxExample extends StatefulWidget {
  const CheckboxExample({Key? key}) : super(key: key);

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Check this box'),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

// Combobox Example
class ComboboxExample extends StatefulWidget {
  const ComboboxExample({Key? key}) : super(key: key);

  @override
  State<ComboboxExample> createState() => _ComboboxExampleState();
}

class _ComboboxExampleState extends State<ComboboxExample> {
  TextEditingController _controller = TextEditingController();
  String selectedValue = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: 'Enter or select an option',
        suffixIcon: DropdownButton<String>(
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
              _controller.text = selectedValue;
            });
          },
          items: <String>['Option 1', 'Option 2', 'Option 3']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}

// Fieldset Example
class FieldsetExample extends StatelessWidget {
  const FieldsetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: const Text('This is a fieldset container.'),
    );
  }
}

// Input Example
class InputExample extends StatelessWidget {
  const InputExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(labelText: 'Enter text'),
    );
  }
}

// Listbox Example
class ListboxExample extends StatelessWidget {
  const ListboxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        ListTile(title: Text('Item 1')),
        ListTile(title: Text('Item 2')),
        ListTile(title: Text('Item 3')),
      ],
    );
  }
}

// Radio Group Example
class RadioGroupExample extends StatefulWidget {
  const RadioGroupExample({Key? key}) : super(key: key);

  @override
  State<RadioGroupExample> createState() => _RadioGroupExampleState();
}

class _RadioGroupExampleState extends State<RadioGroupExample> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<String>(
          title: const Text('Option 1'),
          value: 'Option 1',
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: const Text('Option 2'),
          value: 'Option 2',
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
        ),
      ],
    );
  }
}

// Select Example
class SelectExample extends StatelessWidget {
  const SelectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: ['Select 1', 'Select 2', 'Select 3']
          .map((item) => DropdownMenuItem(value: item, child: Text(item)))
          .toList(),
      onChanged: (value) {},
      hint: const Text('Choose an option'),
    );
  }
}

// Switch Example
class SwitchExample extends StatefulWidget {
  const SwitchExample({Key? key}) : super(key: key);

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Enable Feature'),
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
    );
  }
}

// Textarea Example
class TextareaExample extends StatelessWidget {
  const TextareaExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 5,
      decoration: const InputDecoration(labelText: 'Enter long text'),
    );
  }
}
