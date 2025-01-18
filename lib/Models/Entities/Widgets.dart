import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Button.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/ComboBox.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/ImageSlider.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Input.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Views/SeparateWidgets/CheckBox.dart';
import '../../Views/SeparateWidgets/DatePicker.dart';
import '../../Views/SeparateWidgets/Dialog.dart';
import '../../Views/SeparateWidgets/Disclosure.dart';
import '../../Views/SeparateWidgets/DraggableSheet.dart';
import '../../Views/SeparateWidgets/DropDownMenu.dart';
import '../../Views/SeparateWidgets/Form.dart';
import '../../Views/SeparateWidgets/Listbox.dart';
import '../../Views/SeparateWidgets/NavigationMenu.dart';
import '../../Views/SeparateWidgets/Popover.dart';
import '../../Views/SeparateWidgets/ProgessIndicator.dart';
import '../../Views/SeparateWidgets/RadioGroup.dart';
import '../../Views/SeparateWidgets/Slider.dart';
import '../../Views/SeparateWidgets/Stepper.dart';
import '../../Views/SeparateWidgets/Switch.dart';
import '../../Views/SeparateWidgets/Tabs.dart';
import '../../Views/SeparateWidgets/TimePicker.dart';
import '../../Views/SeparateWidgets/ToastNotification.dart';
import '../../Views/SeparateWidgets/ToolTip.dart';
import '../../Views/SeparateWidgets/Transition.dart';

List<String> widgetsCodeNumber = [
  '''
class DropdownWidget extends StatefulWidget {
  const DropdownWidget({
    super.key,
  });

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: Style.borderRadius,
      ),
      child: DropdownButtonFormField<String>(
        isExpanded: true,
        style: Style.bodyTextStyle,
        borderRadius: Style.borderRadius,
        focusColor: Colors.transparent,
        decoration: Style.inputDecoration,
        value: selectedValue,
        items: ['Option 1', 'Option 2', 'Option 3']
            .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: Style.bodyTextStyle,
                )))
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
      ),
    );
  }
}''',
  '''
class DisclosureWidget extends StatelessWidget {
  const DisclosureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: Style.borderRadius,
      ),
      child: ExpansionTile(
        childrenPadding: const EdgeInsets.all(8),
        title: Text(
          'Tap to Expand',
          style: Style.bodyTextStyle,
        ),
        children: [
          Text(
            'Expanded content goes here',
            style: Style.subtitleTextStyle,
          )
        ],
      ),
    );
  }
}''',
  '''
class DialogWidget extends StatelessWidget {
  const DialogWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Style.buttonStyle,
      onPressed: () {
        showNormalDialog(context);
      },
      child: const Text('Show Dialog'),
    );
  }
}

void showNormalDialog(
  BuildContext context,
) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        'Dialog Title',
        style: Style.headingTextStyle,
      ),
      content: Text(
        'This is the dialog content',
        style: Style.bodyTextStyle,
      ),
      actions: [
        TextButton(
          style: Style.buttonStyle,
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Close',
            style: Style.buttonTextStyle,
          ),
        ),
      ],
    ),
  );
}''',
  '''
class PopoverWidge extends StatelessWidget {
  const PopoverWidge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: Style.borderRadius,
      ),
      child: PopupMenuButton<String>(
        icon: Icon(Icons.more_vert, color: Style.activeColor),
        itemBuilder: (context) => [
          PopupMenuItem(
              value: 'Item 1',
              child: Text(
                'Item 1',
                style: Style.bodyTextStyle,
              )),
          PopupMenuItem(
              value: 'Item 2',
              child: Text(
                'Item 2',
                style: Style.bodyTextStyle,
              )),
        ],
      ),
    );
  }
}''',
  '''
class TabsWidget extends StatelessWidget {
  const TabsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: Style.borderRadius,
            child: TabBar(
              tabs: const [
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 1')),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Tab(text: 'Tab 2')),
              ],
              indicatorColor: Style.activeColor,
              labelColor: Style.activeColor,
              unselectedLabelColor: Style.baseColor,
              dividerColor: Colors.transparent,
              labelStyle: Style.bodyTextStyle,
            ),
          ),
          Container(
            decoration:
                BoxDecoration(color: Colors.white, borderRadius: Style.borderRadius),
            height: 100,
            child: TabBarView(
              children: [
                Center(
                    child: Text(
                  'Content for Tab 1',
                  style: Style.subtitleTextStyle,
                )),
                Center(
                    child: Text(
                  'Content for Tab 2',
                  style: Style.subtitleTextStyle,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}''',
  '''
class FadeTransitionWidget extends StatelessWidget {

  const FadeTransitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Style.buttonStyle,
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return FadeTransition(
                  opacity: animation,
                  child: child); //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}''',
  '''
class SlideTransitionWidget extends StatelessWidget {
  const SlideTransitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Style.buttonStyle,
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                  position: animation.drive(
                      Tween(begin: const Offset(1.0, 0.0), end: Offset.zero)
                          .chain(CurveTween(curve: Curves.ease))),
                  child: child);
              //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}''',
  '''
class RotationTransitionWidget extends StatelessWidget {
  const RotationTransitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Style.buttonStyle,
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return RotationTransition(turns: animation, child: child);
              //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}''',
  '''
class ScaleTransitionWidget extends StatelessWidget {
  const ScaleTransitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Style.buttonStyle,
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return ScaleTransition(scale: animation, child: child);
              //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}''',
  '''
class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: Style.borderRadius,
            ),
            child: TextFormField(
              decoration: Style.inputDecoration,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter your name' : null,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: Style.buttonStyle,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Form is valid')),
                );
              }
            },
            child: Text(
              'Submit',
              style: Style.buttonTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}''',
  '''
class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: Style.borderRadius,
        )),
        backgroundColor:
            WidgetStatePropertyAll(Colors.transparent), // No background color
        foregroundColor:
            WidgetStatePropertyAll(Style.activeColor), // Text color
      ),
      onPressed: () {},
      child: Text(
        'Click Me',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Style.activeColor, // Text color should match foreground
        ),
      ),
    );
  }
}''',
  '''
class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: Style.borderRadius,
        )),
        backgroundColor: WidgetStatePropertyAll(Style.activeColor),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {},
      child: Text(
        'Click Me',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}''',
  '''
class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: Style.borderRadius,
        )),
        backgroundColor: WidgetStatePropertyAll(
            Colors.transparent), // Transparent background
        foregroundColor:
            WidgetStatePropertyAll(Style.activeColor), // Text color
        side: WidgetStatePropertyAll(
            BorderSide(color: Colors.blue, width: 2)), // Blue border
      ),
      onPressed: () {},
      child: Text(
        'Click Me',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Style.activeColor, // Text color should match foreground
        ),
      ),
    );
  }
}''',
  '''
class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(4), // Adding elevation for depth
        padding: WidgetStatePropertyAll(
            EdgeInsets.all(12)), // Icon button usually has small padding
        backgroundColor:
            WidgetStatePropertyAll(Style.activeColor), // Solid background color
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Icon color
      ),
      onPressed: () {},
      icon: const Icon(Icons.download, color: Colors.white), // White icon color
    );
  }
}''',
  '''
class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({
    super.key,
  });

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: Style.borderRadius,
      ),
      child: CheckboxListTile(
        title: Text(
          'Check this box',
          style: Style.bodyTextStyle,
        ),
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
        activeColor: Style.activeColor,
      ),
    );
  }
}''',
  '''
class ComboboxWidget extends StatefulWidget {
  const ComboboxWidget({super.key});

  @override
  State<ComboboxWidget> createState() => _ComboboxWidgetState();
}

class _ComboboxWidgetState extends State<ComboboxWidget> {
  final TextEditingController _controller = TextEditingController();
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: Style.borderRadius,
      ),
      child: TextField(
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
      ),
    );
  }
}
''',
  '''
class BasicTextFieldWidget extends StatelessWidget {
  const BasicTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Enter text',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}''',
  '''
class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Enter text',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}''',
  '''
class PasswordInputWidget extends StatefulWidget {
  const PasswordInputWidget({super.key});

  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          obscureText: _obscureText,
          decoration: InputDecoration(
            labelText: 'Enter password',
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}''',
  '''
class MultilineTextInputWidget extends StatelessWidget {
  const MultilineTextInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          maxLines: 5,
          decoration: InputDecoration(
            labelText: 'Enter multiline text',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}''',
  '''
class NumberInputWidget extends StatelessWidget {
  const NumberInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Enter number',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}''',
  '''
class ListboxWidget extends StatelessWidget {
  const ListboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: Style.borderRadius,
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
              title: Text(
            'Item 1',
            style: Style.bodyTextStyle,
          )),
          ListTile(
              title: Text(
            'Item 2',
            style: Style.bodyTextStyle,
          )),
          ListTile(
              title: Text(
            'Item 3',
            style: Style.bodyTextStyle,
          )),
        ],
      ),
    );
  }
}''',
  '''
class RadioGroupWidget extends StatefulWidget {
  const RadioGroupWidget({super.key});

  @override
  State<RadioGroupWidget> createState() => _RadioGroupWidgetState();
}

class _RadioGroupWidgetState extends State<RadioGroupWidget> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: Style.borderRadius,
      ),
      child: Column(
        children: [
          RadioListTile<String>(
            activeColor: Style.activeColor,
            title: Text(
              'Option 1',
              style: Style.bodyTextStyle,
            ),
            value: 'Option 1',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
          RadioListTile<String>(
            activeColor: Style.activeColor,
            title: Text('Option 2', style: Style.bodyTextStyle),
            value: 'Option 2',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}''',
  '''
class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: Style.borderRadius,
      ),
      child: SwitchListTile(
        trackOutlineColor:
            const WidgetStatePropertyAll(Color.fromARGB(255, 209, 209, 209)),
        activeColor: Colors.white,
        thumbColor: WidgetStatePropertyAll(Style.activeColor),
        title: Text(
          'Enable Feature',
          style: Style.bodyTextStyle,
        ),
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
      ),
    );
  }
}''',
  '''
class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
            'Selected Date: \${selectedDate.year}-\${selectedDate.month.toString().padLeft(2, '0')}-\${selectedDate.day.toString().padLeft(2, '0')}'),
        trailing: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.blue),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            )),
          ),
          onPressed: () async {
            final DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: selectedDate,
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );
            if (pickedDate != null && pickedDate != selectedDate) {
              setState(() {
                selectedDate = pickedDate;
              });
            }
          },
          child: Text(
            'Pick Date',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}''',
  '''
class TimePickerExample extends StatefulWidget {
  const TimePickerExample({super.key});

  @override
  State<TimePickerExample> createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text('Selected Time: \${selectedTime.format(context)}'),
        trailing: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.blue),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            )),
          ),
          onPressed: () async {
            final TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: selectedTime,
            );
            if (pickedTime != null && pickedTime != selectedTime) {
              setState(() {
                selectedTime = pickedTime;
              });
            }
          },
          child: Text(
            'Pick Time',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}''',
  '''
class ToastNotificationWidget extends StatelessWidget {
  const ToastNotificationWidget(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Style.buttonStyle,
      onPressed: () {
        final snackBar = SnackBar(
          backgroundColor: Style.activeColor,
          content: Text(
            'This is a toast notification!',
            style: Style.buttonTextStyle,
          ),
          behavior: SnackBarBehavior.floating,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Text(
        'Show Toast',
        style: Style.buttonTextStyle,
      ),
    );
  }
}''',
  '''
class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: Style.borderRadius,
      ),
      child: Stepper(
        currentStep: currentStep,
        onStepContinue:
            currentStep < 2 ? () => setState(() => currentStep += 1) : null,
        onStepCancel:
            currentStep > 0 ? () => setState(() => currentStep -= 1) : null,
        steps: [
          Step(
            title: const Text('Step 1'),
            content: const Text('This is step 1 content'),
            isActive: currentStep >= 0,
          ),
          Step(
            title: const Text('Step 2'),
            content: const Text('This is step 2 content'),
            isActive: currentStep >= 1,
          ),
          Step(
            title: const Text('Step 3'),
            content: const Text('This is step 3 content'),
            isActive: currentStep >= 2,
          ),
        ],
      ),
    );
  }
}''',
  '''
class TooltipWidget extends StatelessWidget {
  const TooltipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'This is a tooltip!',
      child: Icon(
        Icons.info,
        color: Style.activeColor,
        size: 50,
      ),
    );
  }
}''',
  '''
class DraggableScrollableSheetWidget extends StatefulWidget {
  const DraggableScrollableSheetWidget({super.key});

  @override
  _DraggableScrollableSheetWidgetState createState() =>
      _DraggableScrollableSheetWidgetState();
}

class _DraggableScrollableSheetWidgetState
    extends State<DraggableScrollableSheetWidget> {
  // Method to show the DraggableScrollableSheet
  void _showSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.1,
          maxChildSize: 0.7,
          expand: false,
          builder: (context, controller) {
            return Container(
              decoration: Style.cardDecoration,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 6,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: Style.borderRadius,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Draggable Sheet',
                    style: Style.headingTextStyle,
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                      controller: controller,
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Style.activeColor,
                            child: Text(
                              '\${index + 1}',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          title: Text(
                            'Item \${index + 1}',
                            style: Style.bodyTextStyle,
                          ),
                          subtitle: Text(
                            'Subtitle goes here',
                            style: Style.subtitleTextStyle,
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        );
                      },
                    ),
                  ),
                ],
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
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ),
        onPressed: _showSheet,
        child: Text(
          'Show Draggable Sheet',
          style: Style.buttonTextStyle,
        ),
      ),
    );
  }
}''',
  '''
class LinearProgressIndicatorWidget extends StatelessWidget {
  const LinearProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 80,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: Style.borderRadius,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Loading...'),
              SizedBox(height: 16),
              LinearProgressIndicator(
                backgroundColor: Colors.white,
                color: Style.activeColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}''',
  '''
class CircularProgressIndicatorWidget extends StatelessWidget {
  const CircularProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 130,
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: Style.borderRadius,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Loading...'),
              SizedBox(height: 16),
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: Style.activeColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}''',
  '''
class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 170,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: Style.borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Adjust value:'),
              const SizedBox(height: 3),
              Slider(
                thumbColor: Style.activeColor,
                activeColor: Style.activeColor,
                value: _sliderValue,
                min: 0,
                max: 100,
                divisions: 100,
                label: _sliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
              const SizedBox(height: 3),
              Text('Current value: \${_sliderValue.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}''',
  '''
class ButtonImageSliderExample2 extends StatefulWidget {
  const ButtonImageSliderExample2({super.key});

  @override
  State<ButtonImageSliderExample2> createState() =>
      _ButtonImageSliderExample2State();
}

class _ButtonImageSliderExample2State extends State<ButtonImageSliderExample2> {
  final PageController _controller = PageController();
  final List<String> images = [
    'assets/eample.jpg',
    'assets/example2.jpg',
    'assets/example3.jpg',
  ];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    // Add listener to detect changes in the page
    _controller.addListener(() {
      if (_controller.page != null) {
        setState(() {
          _currentPage = _controller.page!.round();
        });
      }
    });
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  void _navigateToPage(int page) {
    _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: Style.borderRadius,
      ),
      child: Container(
        width: 500,
        height: 250, // Set height for the image slider
        decoration: BoxDecoration(
          borderRadius: Style.borderRadius,
        ),
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: Style.borderRadius,
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              },
            ),
            // Left Button
            Positioned(
              top: 100,
              left: 10,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_left,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  if (_currentPage > 0) {
                    _navigateToPage(_currentPage - 1);
                  }
                },
              ),
            ),
            // Right Button
            Positioned(
              top: 100,
              right: 10,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  if (_currentPage < images.length - 1) {
                    _navigateToPage(_currentPage + 1);
                  }
                },
              ),
            ),
            // Pagination Indicator
            Positioned(
              bottom: 10,
              left: 10,
              child: Row(
                children: List.generate(images.length, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? Style.activeColor
                          : const Color.fromARGB(255, 194, 194, 194),
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}''',
  '''
import 'dart:async';
class AutoImageSliderWidget extends StatefulWidget {
  const AutoImageSliderWidget({super.key});

  @override
  State<AutoImageSliderWidget> createState() =>
      _AutoImageSliderWidgetState();
}

class _AutoImageSliderWidgetState extends State<AutoImageSliderWidget> {
  final PageController _controller = PageController();
  final List<String> images = [
    'assets/eample.jpg',
    'assets/example2.jpg',
    'assets/example3.jpg',
  ];
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Add listener to detect changes in the page
    _controller.addListener(() {
      if (_controller.page != null) {
        setState(() {
          _currentPage = _controller.page!.round();
        });
      }
    });

    // Start a timer to automatically change the page every 3 seconds
    _timer = Timer.periodic(const Duration(seconds: 3), _autoChangePage);
  }

  @override
  void dispose() {
    // Dispose the controller and cancel the timer when the widget is disposed
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _navigateToPage(int page) {
    _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // Method to automatically change the page
  void _autoChangePage(Timer timer) {
    if (_currentPage < images.length - 1) {
      _navigateToPage(_currentPage + 1);
    } else {
      _navigateToPage(0); // Loop back to the first image
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: Style.borderRadius,
      ),
      child: Container(
        width: 500,
        height: 250, // Set height for the image slider
        decoration: BoxDecoration(
          borderRadius: Style.borderRadius,
        ),
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: Style.borderRadius,
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              },
            ),
            // Pagination Indicator
            Positioned(
              bottom: 10,
              left: 10,
              child: Row(
                children: List.generate(images.length, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? Style.activeColor
                          : const Color.fromARGB(255, 194, 194, 194),
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}''',
  '''
import 'package:get/get.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(
      child: const Text("First Screen"),
    ), // Home screen
    Container(
      child: const Text("Second Screen"),
    ), // Store screen
    Container(
      child: const Text("Third Screen"),
    ), // WhishList screen
    Container(
      child: const Text("Fourth Screen"),
    ), // Profile screen
  ];
}

class NavigationMenuWidget extends StatefulWidget {
  const NavigationMenuWidget({super.key});

  @override
  State<NavigationMenuWidget> createState() => _NavigationMenuWidgetState();
}

class _NavigationMenuWidgetState extends State<NavigationMenuWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Card(
      color: Colors.white.withOpacity(0.5),
      elevation: 4, // Elevation for subtle shadow
      shape: RoundedRectangleBorder(
        borderRadius: Style.borderRadius, // Rounded corners for the card
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding inside the card
        child: Column(
          mainAxisSize: MainAxisSize
              .min, // Ensure the column fits content inside the card
          children: [
            // Body content
            Obx(() => controller.screens[controller.selectedIndex.value]),
            const SizedBox(
                height: 8), // Add space between body and navigation bar
            // Bottom Navigation Bar
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Style.borderRadius.topLeft.x),
                  bottomRight: Radius.circular(Style.borderRadius.topRight.x),
                ),
                color: const Color.fromARGB(255, 255, 255,
                    255), // Background color for the navigation bar
              ),
              child: Obx(
                () => NavigationBar(
                  indicatorColor: Style
                      .activeColor, // Active color for the selected destination
                  height: 60, // Height for the bottom navigation bar
                  elevation: 0,
                  selectedIndex: controller.selectedIndex.value,
                  onDestinationSelected: (index) =>
                      controller.selectedIndex.value = index,
                  destinations: const [
                    NavigationDestination(
                        icon: Icon(Icons.home), label: 'Home'),
                    NavigationDestination(
                        icon: Icon(Icons.shop), label: 'Store'),
                    NavigationDestination(
                        icon: Icon(Icons.favorite), label: 'WishList'),
                    NavigationDestination(
                        icon: Icon(Icons.person), label: 'Profile'),
                  ],
                  backgroundColor: Colors
                      .transparent, // Transparent background as it will have a custom color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}''',
];

List<Widget> widgetsNumber(BuildContext context, StylesBase style) {
  return [
    DropdownExample(
      borderRadius: style.borderRadius,
      textStyle: style.bodyTextStyle,
      inputDecoration: style.inputDecoration,
    ),
    DisclosureExample(
      borderRadius: style.borderRadius,
      textStyle: style.bodyTextStyle,
      subtitleTextStyle: style.subtitleTextStyle,
    ),
    DialogExample(
      func: () => showNormalDialog(context, style.bodyTextStyle,
          style.headingTextStyle, style.buttonStyle, style.buttonTextStyle),
    ),
    PopoverExample(
        bodyTextStyle: style.bodyTextStyle,
        borderRadius: style.borderRadius,
        color: style.activeColor),
    TabsExample(
      bodyTextStyle: style.bodyTextStyle,
      subtitleTextStyle: style.subtitleTextStyle,
      baseColor: style.baseColor,
      activeColor: style.activeColor,
      borderRadius: style.borderRadius,
    ),
    FadeTransitionExample2(
      buttonStyle: style.buttonStyle,
    ),
    SlideTransitionExample2(buttonStyle: style.buttonStyle),
    RotationTransitionExample2(buttonStyle: style.buttonStyle),
    ScaleTransitionExample2(buttonStyle: style.buttonStyle),
    FormExample(
      borderRadius: style.borderRadius,
      inputDecoration: style.inputDecoration,
      buttonStyle: style.buttonStyle,
      buttonTextStyle: style.buttonTextStyle,
    ),
    TextButtonWidget2(
      activeColor: style.activeColor,
      borderRadius: style.borderRadius,
    ),
    ElevatedButtonWidget2(
      activeColor: style.activeColor,
      borderRadius: style.borderRadius,
    ),
    OutlinedButtonWidget2(
      activeColor: style.activeColor,
      borderRadius: style.borderRadius,
    ),
    IconButtonWidget2(
      activeColor: style.activeColor,
      borderRadius: style.borderRadius,
    ),
    CheckboxExample(
      color: style.activeColor,
      bodyTextStyle: style.bodyTextStyle,
      borderRadius: style.borderRadius,
    ),
    const Combobox(),
    const BasicTextFieldExample(),
    const TextFormFieldExample(),
    const PasswordInputExample(),
    const MultilineTextInputExample(),
    const NumberInputExample(),
    ListboxExample(
      bodyTextStyle: style.bodyTextStyle,
      borderRadius: style.borderRadius,
    ),
    RadioGroupExample(
      bodyTextStyle: style.bodyTextStyle,
      borderRadius: style.borderRadius,
      activeColor: style.activeColor,
    ),
    SwitchExample(
      activeColor: style.activeColor,
      bodyTextStyle: style.bodyTextStyle,
      borderRadius: style.borderRadius,
    ),
    const DatePickerExample(),
    const TimePickerExample(),
    ToastNotificationExample(
      buttonTextStyle: style.buttonTextStyle,
      activeColor: style.activeColor,
    ),
    const StepperExample(),
    TooltipExample2(
      activeColor: style.activeColor,
    ),
    DraggableScrollableSheetExample(
      cardDecoration: style.cardDecoration,
      borderRadius: style.borderRadius,
      buttonTextStyle: style.buttonTextStyle,
      headingTextStyle: style.headingTextStyle,
      bodyTextStyle: style.bodyTextStyle,
      activeColor: style.activeColor,
      subtitleTextStyle: style.subtitleTextStyle,
    ),
    LinearProgressIndicatorExample2(
      activeColor: style.activeColor,
    ),
    CircularProgressIndicatorExample2(activeColor: style.activeColor),
    SliderExample2(
      activeColor: style.activeColor,
    ),
    ButtonImageSliderExample2(
      borderRadius: style.borderRadius,
      activeColor: style.activeColor,
    ),
    AutoImageSliderExample2(
        activeColor: style.activeColor, borderRadius: style.borderRadius),
    NavigationMenu(
      borderRadius: style.borderRadius,
      activeColor: style.activeColor,
    ),
  ];
}

List<String> styles = [
  '''
class Style {
  // General Styling
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(12));
  static const Color baseColor = Colors.grey;
  static const Color activeColor = Colors.blue;
  static const Color backgroundColor = Colors.white;

  // Text Styles with Google Fonts
  static final TextStyle headingTextStyle = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
  static final TextStyle bodyTextStyle = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );
  static final TextStyle buttonTextStyle = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static final TextStyle subtitleTextStyle = 
  GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  // Button Style
  static const ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(activeColor),
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: borderRadius,
    )),
  );

  // Input Decoration
  static const InputDecoration inputDecoration = InputDecoration(
    filled: true,
    fillColor: Color(0xFFF0F0F0),
    border: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: activeColor,width: 4),
    ),
    hintStyle: TextStyle(color: Colors.grey),
    hintText: "Enter",
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );

  // Shadows
  static const List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 8,
      offset: Offset(0, 4),
    ),
  ];

  // Card Style
  static const BoxDecoration cardDecoration = BoxDecoration(
    color: backgroundColor,
    borderRadius: borderRadius,
    boxShadow: boxShadow,
  );
}
''',
  '''
class Style {
  // General Styling
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(4));
  static const Color baseColor = Colors.black;
  static const Color activeColor = Colors.brown;
  static const Color backgroundColor = Colors.white;

  // Text Styles with Google Fonts
  static final TextStyle headingTextStyle = GoogleFonts.ptSerif(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: baseColor,
  );
  static final TextStyle bodyTextStyle = GoogleFonts.merriweather(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.brown,
  );
  static final TextStyle buttonTextStyle = GoogleFonts.merriweather(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static final TextStyle subtitleTextStyle = GoogleFonts.courgette(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: Colors.grey,
  );

  // Button Style
  static final ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(activeColor),
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
    shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: borderRadius,
    )),
  );

  // Input Decoration
  static const InputDecoration inputDecoration = InputDecoration(
    filled: true,
    fillColor: Color(0xFFF5F5F5),
    border: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: activeColor,width: 4),
    ),
    hintStyle: TextStyle(color: Colors.grey),
    hintText: "Enter",
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  );

  // Shadows
  static const List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.black26,
      blurRadius: 4,
      offset: Offset(0, 2),
    ),
  ];

  // Card Style
  static const BoxDecoration cardDecoration = BoxDecoration(
    color: backgroundColor,
    borderRadius: borderRadius,
    boxShadow: boxShadow,
  );
}
''',
  '''
class Style {
  // General Styling
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(16));
  static const Color baseColor = Color(0xFF4A4A4A);
  static const Color activeColor = Color(0xFF6A5ACD); // Soft purple
  static const Color backgroundColor = Color(0xFFF9F9F9);

  // Text Styles with Google Fonts
  static final TextStyle headingTextStyle = GoogleFonts.playfairDisplay(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: baseColor,
    letterSpacing: 1.2,
  );
  static final TextStyle bodyTextStyle = GoogleFonts.nunito(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: const Color(0xFF2F2F2F),
  );
  static final TextStyle buttonTextStyle = GoogleFonts.nunito(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color:Colors.white,
  );
  static final TextStyle subtitleTextStyle = GoogleFonts.dancingScript(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: Colors.black54,
  );

  // Button Style
  static final ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(activeColor),
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 12)),
    shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: borderRadius,
    )),
    elevation: WidgetStatePropertyAll(5),
  );

  // Input Decoration
  static const InputDecoration inputDecoration = InputDecoration(
    filled: true,
    fillColor: Color(0xFFF2F2F2),
    border: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: activeColor,width: 4),
    ),
    hintText: "Enter",
    hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );

  // Shadows
  static const List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 12,
      offset: Offset(0, 6),
    ),
  ];

  // Card Style
  static const BoxDecoration cardDecoration = BoxDecoration(
    color: backgroundColor,
    borderRadius: borderRadius,
    boxShadow: boxShadow,
  );
}
''',
];

void showNormalDialog(
    BuildContext context,
    TextStyle textStyle,
    TextStyle headingTextStyle,
    ButtonStyle buttonStyle,
    TextStyle buttonTextStyle) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        'Dialog Title',
        style: headingTextStyle,
      ),
      content: Text(
        'This is the dialog content',
        style: textStyle,
      ),
      actions: [
        TextButton(
          style: buttonStyle,
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Close',
            style: buttonTextStyle,
          ),
        ),
      ],
    ),
  );
}

// @override
// void initState() {
//   super.initState();
//   // Choose the style you want, for example, ModernStyles
//   StylesBase currentStyle = ModernStyles();
//   // Store the list of widgets in the variable
//   widgetsList = widgetsNumber(context, currentStyle);
// }

abstract class StylesBase {
  BorderRadius get borderRadius;
  TextStyle get bodyTextStyle;
  TextStyle get headingTextStyle;
  TextStyle get buttonTextStyle;
  TextStyle get subtitleTextStyle;
  ButtonStyle get buttonStyle;
  InputDecoration get inputDecoration;
  Color get activeColor;
  Color get baseColor;
  BoxDecoration get cardDecoration; // Add cardDecoration getter
}

class ModernStyles implements StylesBase {
  @override
  BorderRadius get borderRadius => const BorderRadius.all(Radius.circular(12));
  @override
  Color get activeColor => Colors.blue;
  @override
  Color get baseColor => Colors.grey;
  @override
  TextStyle get headingTextStyle => GoogleFonts.roboto(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      );

  @override
  TextStyle get bodyTextStyle => GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );

  @override
  TextStyle get buttonTextStyle => GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      );

  @override
  TextStyle get subtitleTextStyle => GoogleFonts.lato(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      );

  @override
  ButtonStyle get buttonStyle => const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        )),
      );

  @override
  InputDecoration get inputDecoration => const InputDecoration(
        filled: true,
        fillColor: Color(0xFFF0F0F0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Colors.blue, width: 4),
        ),
        hintStyle: TextStyle(color: Colors.grey),
        hintText: "Enter",
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      );

  @override
  BoxDecoration get cardDecoration => const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      );
}

class ClassicStyles implements StylesBase {
  @override
  BorderRadius get borderRadius => const BorderRadius.all(Radius.circular(8));
  @override
  Color get activeColor => Colors.brown;
  @override
  Color get baseColor => Colors.black;
  @override
  TextStyle get headingTextStyle => GoogleFonts.lora(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.brown,
      );

  @override
  TextStyle get bodyTextStyle => GoogleFonts.montserrat(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );

  @override
  TextStyle get buttonTextStyle => GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  @override
  TextStyle get subtitleTextStyle => GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      );

  @override
  ButtonStyle get buttonStyle => const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.brown),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        )),
      );

  @override
  InputDecoration get inputDecoration => const InputDecoration(
        filled: true,
        fillColor: Color(0xFFE0E0E0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.brown),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.brown),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.brown, width: 4),
        ),
        hintStyle: TextStyle(color: Colors.grey),
        hintText: "Enter",
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      );

  @override
  BoxDecoration get cardDecoration => const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      );
}

class ElegantStyles implements StylesBase {
  @override
  BorderRadius get borderRadius => const BorderRadius.all(Radius.circular(16));
  @override
  Color get activeColor => Colors.deepPurple;
  @override
  Color get baseColor => const Color.fromARGB(255, 95, 95, 95);
  @override
  TextStyle get headingTextStyle => GoogleFonts.poppins(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      );

  @override
  TextStyle get bodyTextStyle => GoogleFonts.robotoSlab(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );

  @override
  TextStyle get buttonTextStyle => GoogleFonts.robotoSlab(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  @override
  TextStyle get subtitleTextStyle => GoogleFonts.robotoSlab(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      );

  @override
  ButtonStyle get buttonStyle => const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        )),
      );

  @override
  InputDecoration get inputDecoration => const InputDecoration(
        filled: true,
        fillColor: Color(0xFFF8F8F8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(color: Colors.deepPurple, width: 4),
        ),
        hintStyle: TextStyle(color: Colors.grey),
        hintText: "Enter",
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      );

  @override
  BoxDecoration get cardDecoration => const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      );
}
