// // Dropdown Menu
// import 'package:flutter/material.dart';

// class DropdownExample extends StatefulWidget {
//   const DropdownExample({super.key});

//   @override
//   State<DropdownExample> createState() => _DropdownExampleState();
// }

// class _DropdownExampleState extends State<DropdownExample> {
//   String selectedValue = 'Option 1';
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: selectedValue,
//       onChanged: (String? newValue) {
//         setState(() {
//           selectedValue = newValue!;
//         });
//       },
//       items: <String>['Option 1', 'Option 2', 'Option 3']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }

// // Disclosure Example
// class DisclosureExample extends StatelessWidget {
//   const DisclosureExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const ExpansionTile(
//       title: Text('Tap to Expand'),
//       children: [Text('Expanded content goes here')],
//     );
//   }
// }

// // Dialog Example
// class DialogExample extends StatelessWidget {
//   const DialogExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: const Text('Dialog Title'),
//             content: const Text('This is the dialog content'),
//             actions: [
//               TextButton(
//                   onPressed: () => Navigator.pop(context),
//                   child: const Text('Close')),
//             ],
//           ),
//         );
//       },
//       child: const Text('Show Dialog'),
//     );
//   }
// }

// // Popover Example
// class PopoverExample extends StatelessWidget {
//   const PopoverExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton<String>(
//       onSelected: (value) {},
//       itemBuilder: (context) => [
//         const PopupMenuItem(value: 'Item 1', child: Text('Item 1')),
//         const PopupMenuItem(value: 'Item 2', child: Text('Item 2')),
//       ],
//     );
//   }
// }

// // Tabs Example
// class TabsExample extends StatelessWidget {
//   const TabsExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const DefaultTabController(
//       length: 2,
//       child: Column(
//         children: [
//           TabBar(tabs: [Tab(text: 'Tab 1'), Tab(text: 'Tab 2')]),
//           SizedBox(
//             height: 100,
//             child: TabBarView(
//                 children: [Text('Content 1'), Text('Content 2')]),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Transition Example
// class TransitionExample extends StatelessWidget {
//   const TransitionExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () => Navigator.push(
//         context,
//         PageRouteBuilder(
//           pageBuilder: (_, __, ___) => Scaffold(
//             appBar: AppBar(title: const Text('New Page')),
//             body: const Center(child: Text('New Page Content')),
//           ),
//           transitionsBuilder: (_, animation, __, child) {
//             return FadeTransition(opacity: animation, child: child);
//           },
//         ),
//       ),
//       child: const Text('Transition to New Page'),
//     );
//   }
// }

// // Form Example
// class FormExample extends StatelessWidget {
//   const FormExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//     return Form(
//       key: formKey,
//       child: Column(
//         children: [
//           TextFormField(
//             decoration: const InputDecoration(labelText: 'Name'),
//             validator: (value) =>
//                 value!.isEmpty ? 'Please enter your name' : null,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               if (formKey.currentState!.validate()) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Form is valid')));
//               }
//             },
//             child: const Text('Submit'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Button Example
// class ButtonExample extends StatelessWidget {
//   const ButtonExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       child: const Text('Click Me'),
//     );
//   }
// }

// // Checkbox Example
// class CheckboxExample extends StatefulWidget {
//   const CheckboxExample({super.key});

//   @override
//   State<CheckboxExample> createState() => _CheckboxExampleState();
// }

// class _CheckboxExampleState extends State<CheckboxExample> {
//   bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return CheckboxListTile(
//       title: const Text('Check this box'),
//       value: isChecked,
//       onChanged: (value) {
//         setState(() {
//           isChecked = value!;
//         });
//       },
//     );
//   }
// }

// // Combobox Example
// class ComboboxExample extends StatefulWidget {
//   const ComboboxExample({super.key});

//   @override
//   State<ComboboxExample> createState() => _ComboboxExampleState();
// }

// class _ComboboxExampleState extends State<ComboboxExample> {
//   final TextEditingController _controller = TextEditingController();
//   String selectedValue = 'Option 1';
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: _controller,
//       decoration: InputDecoration(
//         labelText: 'Enter or select an option',
//         suffixIcon: DropdownButton<String>(
//           value: selectedValue,
//           onChanged: (String? newValue) {
//             setState(() {
//               selectedValue = newValue!;
//               _controller.text = selectedValue;
//             });
//           },
//           items: <String>['Option 1', 'Option 2', 'Option 3']
//               .map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }

// // Fieldset Example
// class FieldsetExample extends StatelessWidget {
//   const FieldsetExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
//       child: const Text('This is a fieldset container.'),
//     );
//   }
// }

// // Input Example
// class InputExample extends StatelessWidget {
//   const InputExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const TextField(
//       decoration: InputDecoration(labelText: 'Enter text'),
//     );
//   }
// }

// // Listbox Example
// class ListboxExample extends StatelessWidget {
//   const ListboxExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       shrinkWrap: true,
//       children: const [
//         ListTile(title: Text('Item 1')),
//         ListTile(title: Text('Item 2')),
//         ListTile(title: Text('Item 3')),
//       ],
//     );
//   }
// }

// // Radio Group Example
// class RadioGroupExample extends StatefulWidget {
//   const RadioGroupExample({super.key});

//   @override
//   State<RadioGroupExample> createState() => _RadioGroupExampleState();
// }

// class _RadioGroupExampleState extends State<RadioGroupExample> {
//   String selectedValue = 'Option 1';

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         RadioListTile<String>(
//           title: const Text('Option 1'),
//           value: 'Option 1',
//           groupValue: selectedValue,
//           onChanged: (value) {
//             setState(() {
//               selectedValue = value!;
//             });
//           },
//         ),
//         RadioListTile<String>(
//           title: const Text('Option 2'),
//           value: 'Option 2',
//           groupValue: selectedValue,
//           onChanged: (value) {
//             setState(() {
//               selectedValue = value!;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }

// // Select Example
// class SelectExample extends StatelessWidget {
//   const SelectExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       items: ['Select 1', 'Select 2', 'Select 3']
//           .map((item) => DropdownMenuItem(value: item, child: Text(item)))
//           .toList(),
//       onChanged: (value) {},
//       hint: const Text('Choose an option'),
//     );
//   }
// }

// // Switch Example
// class SwitchExample extends StatefulWidget {
//   const SwitchExample({super.key});

//   @override
//   State<SwitchExample> createState() => _SwitchExampleState();
// }

// class _SwitchExampleState extends State<SwitchExample> {
//   bool isSwitched = false;

//   @override
//   Widget build(BuildContext context) {
//     return SwitchListTile(
//       title: const Text('Enable Feature'),
//       value: isSwitched,
//       onChanged: (value) {
//         setState(() {
//           isSwitched = value;
//         });
//       },
//     );
//   }
// }

// // Textarea Example
// class TextareaExample extends StatelessWidget {
//   const TextareaExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const TextField(
//       maxLines: 5,
//       decoration: InputDecoration(labelText: 'Enter long text'),
//     );
//   }
// }


// class AccordionExample extends StatelessWidget {
//   const AccordionExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ExpansionTile(
//       title: const Text('Accordion Header'),
//       children: [
//         Container(
//           padding: const EdgeInsets.all(16),
//           child: const Text('Accordion content goes here'),
//         ),
//       ],
//     );
//   }
// }

// class DatePickerExample extends StatelessWidget {
//   const DatePickerExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () async {
//         await showDatePicker(
//           context: context,
//           initialDate: DateTime.now(),
//           firstDate: DateTime(2000),
//           lastDate: DateTime(2100),
//         );
//       },
//       child: const Text('Pick a Date'),
//     );
//   }
// }

// class TimePickerExample extends StatelessWidget {
//   const TimePickerExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () async {
//         await showTimePicker(
//           context: context,
//           initialTime: TimeOfDay.now(),
//         );
//       },
//       child: const Text('Pick a Time'),
//     );
//   }
// }

// class ToastNotificationExample extends StatelessWidget {
//   const ToastNotificationExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         const snackBar = SnackBar(
//           content: Text('This is a toast notification!'),
//           behavior: SnackBarBehavior.floating,
//         );
//         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       },
//       child: const Text('Show Toast'),
//     );
//   }
// }

// class CarouselExample extends StatelessWidget {
//   const CarouselExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 200,
//       child: PageView.builder(
//         itemCount: 3,
//         itemBuilder: (context, index) {
//           return Container(
//             margin: const EdgeInsets.all(8),
//             child: Center(
//               child: Text('Page ${index + 1}'),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class StepperExample extends StatefulWidget {
//   const StepperExample({super.key});

//   @override
//   _StepperExampleState createState() => _StepperExampleState();
// }

// class _StepperExampleState extends State<StepperExample> {
//   int currentStep = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Stepper(
//       currentStep: currentStep,
//       onStepContinue: currentStep < 2 ? () => setState(() => currentStep += 1) : null,
//       onStepCancel: currentStep > 0 ? () => setState(() => currentStep -= 1) : null,
//       steps: [
//         Step(
//           title: const Text('Step 1'),
//           content: const Text('This is step 1 content'),
//           isActive: currentStep >= 0,
//         ),
//         Step(
//           title: const Text('Step 2'),
//           content: const Text('This is step 2 content'),
//           isActive: currentStep >= 1,
//         ),
//         Step(
//           title: const Text('Step 3'),
//           content: const Text('This is step 3 content'),
//           isActive: currentStep >= 2,
//         ),
//       ],
//     );
//   }
// }

// class TooltipExample extends StatelessWidget {
//   const TooltipExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Tooltip(
//       message: 'This is a tooltip!',
//       child: Icon(Icons.info),
//     );
//   }
// }

