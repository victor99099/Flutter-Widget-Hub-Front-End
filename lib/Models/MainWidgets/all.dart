// Dropdown Menu
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../Styles/styles.dart';



// Dropdown Menu
class DropdownExample extends StatefulWidget {
  const DropdownExample({Key? key}) : super(key: key);

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
        value: selectedValue,
        items: ['Option 1', 'Option 2', 'Option 3']
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
      ),
    );
  }
}

// Disclosure (ExpansionTile)
class DisclosureExample extends StatelessWidget {
  const DisclosureExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: ExpansionTile(
        title: const Text('Tap to Expand'),
        children: [const Text('Expanded content goes here')],
      ),
    );
  }
}

// Dialog (AlertDialog)
class DialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Dialog Title'),
            content: const Text('This is the dialog content'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
      child: const Text('Show Dialog'),
    );
  }
}

// Popover (PopupMenuButton)
class PopoverExample extends StatelessWidget {
  const PopoverExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: PopupMenuButton<String>(
        icon: const Icon(Icons.more_vert, color: ModernStyles.activeColor),
        itemBuilder: (context) => [
          const PopupMenuItem(value: 'Item 1', child: Text('Item 1')),
          const PopupMenuItem(value: 'Item 2', child: Text('Item 2')),
        ],
      ),
    );
  }
}

// Tabs (TabBar & TabBarView)
class TabsExample extends StatelessWidget {
  const TabsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: ModernStyles.borderRadius,
            child: TabBar(
              tabs: const [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
              ],
              indicator: BoxDecoration(
                borderRadius: ModernStyles.borderRadius,
                color: ModernStyles.activeColor,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: ModernStyles.baseColor,
            ),
          ),
          Container(
            height: 100,
            child: const TabBarView(
              children: [
                Center(child: Text('Content for Tab 1')),
                Center(child: Text('Content for Tab 2')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Transition (PageRouteBuilder with FadeTransition)
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

// Form (TextFormField)
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

// Button (ElevatedButton)
class ButtonExample extends StatelessWidget {
  const ButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {},
      child: const Text('Click Me'),
    );
  }
}

// Checkbox (CheckboxListTile)
class CheckboxExample extends StatefulWidget {
  const CheckboxExample({Key? key}) : super(key: key);

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: CheckboxListTile(
        title: const Text('Check this box'),
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
        activeColor: ModernStyles.activeColor,
      ),
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
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
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


// Input Example
class InputExample extends StatelessWidget {
  const InputExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: TextField(
        decoration: const InputDecoration(labelText: 'Enter text'),
      ),
    );
  }
}

// Listbox Example
class ListboxExample extends StatelessWidget {
  const ListboxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: ListView(
        shrinkWrap: true,
        children: const [
          ListTile(title: Text('Item 1')),
          ListTile(title: Text('Item 2')),
          ListTile(title: Text('Item 3')),
        ],
      ),
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
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: Column(
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
      ),
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
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: SwitchListTile(
        title: const Text('Enable Feature'),
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
      ),
    );
  }
}

// Textarea Example
class TextareaExample extends StatelessWidget {
  const TextareaExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: TextField(
        maxLines: 5,
        decoration: const InputDecoration(labelText: 'Enter long text'),
      ),
    );
  }
}

// DatePicker Example
class DatePickerExample extends StatefulWidget {
  const DatePickerExample({Key? key}) : super(key: key);

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: ListTile(
        title: Text(
            'Selected Date: ${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}'),
        trailing: ElevatedButton(
          style: getElevatedButtonStyle(),
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
          child: const Text('Pick Date'),
        ),
      ),
    );
  }
}

// TimePicker Example
class TimePickerExample extends StatefulWidget {
  const TimePickerExample({Key? key}) : super(key: key);

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
        borderRadius: ModernStyles.borderRadius,
      ),
      child: ListTile(
        title: Text('Selected Time: ${selectedTime.format(context)}'),
        trailing: ElevatedButton(
          style: getElevatedButtonStyle(),
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
          child: const Text('Pick Time'),
        ),
      ),
    );
  }
}

// Toast Notification Example (SnackBar)
class ToastNotificationExample extends StatelessWidget {
  const ToastNotificationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {
        final snackBar = SnackBar(
          content: const Text('This is a toast notification!'),
          behavior: SnackBarBehavior.floating,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: const Text('Show Toast'),
    );
  }
}



// Stepper Example (Stepper Widget)
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

// Tooltip Example (Tooltip)
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



// Slider
class SliderExample extends StatefulWidget {
  const SliderExample({Key? key}) : super(key: key);

  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _sliderValue = 0;

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
            const Text('Adjust value:'),
            const SizedBox(height: 16),
            Slider(
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
            const SizedBox(height: 16),
            Text('Current value: ${_sliderValue.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}



class ImageSliderExample extends StatefulWidget {
  const ImageSliderExample({Key? key}) : super(key: key);

  @override
  State<ImageSliderExample> createState() => _ImageSliderExampleState();
}

class _ImageSliderExampleState extends State<ImageSliderExample> {
  final PageController _controller = PageController();
  final List<String> images = [
    'assets/example.png',
    'assets/example2.png',
    'assets/example3.png',
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
        borderRadius: ModernStyles.borderRadius,
      ),
      child: Container(
        height: 250, // Set height for the image slider
        decoration: BoxDecoration(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: ModernStyles.borderRadius,
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
                icon: Icon(
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
                icon: Icon(
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
                          ? ModernStyles.activeColor
                          : ModernStyles.baseColor,
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
}

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Card(
      elevation: 4, // Elevation for subtle shadow
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius, // Rounded corners for the card
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding inside the card
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensure the column fits content inside the card
          children: [
            // Body content
            Obx(() => controller.screens[controller.selectedIndex.value]),
            const SizedBox(height: 8), // Add space between body and navigation bar
            // Bottom Navigation Bar
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(ModernStyles.borderRadius.topLeft.x),
                  bottomRight: Radius.circular(ModernStyles.borderRadius.topRight.x),
                ),
                color: const Color.fromARGB(255, 255, 255, 255), // Background color for the navigation bar
              ),
              child: Obx(
                () => NavigationBar(
                  indicatorColor: ModernStyles.activeColor, // Active color for the selected destination
                  height: 60, // Height for the bottom navigation bar
                  elevation: 0,
                  selectedIndex: controller.selectedIndex.value,
                  onDestinationSelected: (index) => controller.selectedIndex.value = index,
                  destinations: [
                    NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                    NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
                    NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
                    NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
                  ],
                  backgroundColor: Colors.transparent, // Transparent background as it will have a custom color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(child: Text("First Screen"),), // Home screen
    Container(child: Text("Second Screen"),), // Home screen
    Container(child: Text("Third Screen"),), // Home screen
    Container(child: Text("Fourth Screen"),), // Home screen

  ];
}
