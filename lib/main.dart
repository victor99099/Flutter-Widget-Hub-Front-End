import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Views/MainScreens/mainScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_date_picker/scrollable_date_picker.dart';
import 'dart:html' as html;
import 'Models/MainWidgets/all.dart';

Future<void> main() async {
   await initializeDateFormatting();
  html.window.onBeforeUnload.listen((event) {
    // Ensures the pointer binding doesn't mismatch the target element
    html.document.body?.focus();
  });
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Widgets Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: GoogleFonts.nunito().fontFamily),
      home: const MainScreen(),
    );
  }
}

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({super.key});

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
          widgetSection('Input', const InputExample()),
          widgetSection('Listbox', const ListboxExample()),
          widgetSection('Radio Group', const RadioGroupExample()),
          widgetSection('Switch', const SwitchExample()),
          widgetSection('Textarea', const TextareaExample()),
          widgetSection('DatePicker', const DatePickerExample()),
          widgetSection('TimePicker', const TimePickerExample()),
          widgetSection('Toast Notification', const ToastNotificationExample()),
          widgetSection('Stepper', const StepperExample()),
          widgetSection('Tooltip', const TooltipExample()),
          widgetSection('DraggableScrollableSheet',
              const DraggableScrollableSheetExample()),
          widgetSection('LinearProgressIndicator',
              const LinearProgressIndicatorExample()),
          widgetSection('CircularProgressIndicator',
              const CircularProgressIndicatorExample()),
          widgetSection('Slider', const SliderExample()),
          widgetSection('Slider', const ImageSliderExample()),
          widgetSection('Navigation Menu', const NavigationMenu()),
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
