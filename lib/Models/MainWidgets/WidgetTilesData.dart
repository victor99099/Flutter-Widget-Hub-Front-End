// Array of titles
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Styles/styles.dart';

import '../../Views/SeparateWidgets/Button.dart';
import '../../Views/SeparateWidgets/CheckBox.dart';
import '../../Views/SeparateWidgets/ComboBox.dart';
import '../../Views/SeparateWidgets/DatePicker.dart';
import '../../Views/SeparateWidgets/Dialog.dart';
import '../../Views/SeparateWidgets/Disclosure.dart';
import '../../Views/SeparateWidgets/DraggableSheet.dart';
import '../../Views/SeparateWidgets/DropDownMenu.dart';
import '../../Views/SeparateWidgets/Form.dart';
import '../../Views/SeparateWidgets/ImageSlider.dart';
import '../../Views/SeparateWidgets/Input.dart';
import '../../Views/SeparateWidgets/Listbox.dart';
import '../../Views/SeparateWidgets/NavigationMenu.dart';
import '../../Views/SeparateWidgets/Popover.dart';
import '../../Views/SeparateWidgets/ProgessIndicator.dart';
import '../../Views/SeparateWidgets/RadioGroup.dart';
import '../../Views/SeparateWidgets/Slider.dart';
import '../../Views/SeparateWidgets/Stepper.dart';
import '../../Views/SeparateWidgets/Switch.dart';
import '../../Views/SeparateWidgets/Tabs.dart';
import '../../Views/SeparateWidgets/TextArea.dart';
import '../../Views/SeparateWidgets/TimePicker.dart';
import '../../Views/SeparateWidgets/ToastNotification.dart';
import '../../Views/SeparateWidgets/ToolTip.dart';
import '../../Views/SeparateWidgets/Transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final Map<String, Color> widgetIconColors = {
  'Dropdown Menu': Colors.red,
  'Disclosure': const Color.fromARGB(255, 156, 255, 160),
  'Dialog': const Color.fromARGB(255, 199, 101, 216),
  'Popover': Colors.orange,
  'Tabs': const Color.fromARGB(255, 211, 131, 102),
  'Transition': const Color.fromARGB(255, 105, 231, 219),
  'Forms': Colors.amber,
  'Button': const Color.fromARGB(255, 121, 138, 235),
  'Checkbox': Colors.pink,
  'Combobox': Colors.cyanAccent,
  'Input': const Color.fromARGB(255, 136, 231, 157),
  'Listbox': Colors.deepOrange,
  'Radio Group': Colors.deepPurple,
  'Switch': Colors.lightGreen,
  'Text-Area': Colors.lime,
  'Date Picker': Colors.orangeAccent,
  'Time Picker': Colors.yellow,
  'Toast Notification': Colors.redAccent,
  'Stepper': Colors.pink,
  'Tooltip': Colors.greenAccent,
  'Draggable-Scrollable Sheet': const Color.fromARGB(255, 255, 136, 92),
  'Progress Indicator': Colors.limeAccent,
  'Slider': Colors.purpleAccent,
  'Image Slider': Colors.pinkAccent,
  'Navigation Menu': Colors.tealAccent,
};

final Map<String, IconData> widgetIcons = {
  'Dropdown Menu': Icons.arrow_drop_down_circle,
  'Disclosure': Icons.expand_more_sharp,
  'Dialog': Icons.message,
  'Popover': Icons.menu,
  'Tabs': Icons.tab,
  'Transition': Icons.flip,
  'Forms': Icons.format_align_left,
  'Button': Icons.radio_button_checked,
  'Checkbox': Icons.check_box,
  'Combobox': Icons.merge_type,
  'Input': Icons.input,
  'Listbox': Icons.list,
  'Radio Group': Icons.radio_button_unchecked,
  'Switch': Icons.toggle_on,
  'Text-Area': Icons.text_fields,
  'Date Picker': Icons.calendar_today,
  'Time Picker': Icons.access_time,
  'Toast Notification': Icons.notification_important,
  'Stepper': Icons.format_list_numbered,
  'Tooltip': Icons.info_outline,
  'Draggable-Scrollable Sheet': Icons.drag_indicator,
  'Progress Indicator': Icons.linear_scale,
  'Slider': Icons.tune,
  'Image Slider': Icons.image,
  'Navigation Menu': Icons.menu,
};

final List<String> widgetTitles = [
  'Dropdown Menu',
  'Disclosure',
  'Dialog',
  'Popover',
  'Tabs',
  'Transition',
  'Forms',
  'Button',
  'Checkbox',
  'Combobox',
  'Input',
  'Listbox',
  'Radio Group',
  'Switch',
  'Text-Area',
  'Date Picker',
  'Time Picker',
  'Toast Notification',
  'Stepper',
  'Tooltip',
  'Draggable-Scrollable Sheet',
  'Progress Indicator',
  'Slider',
  'Image Slider',
  'Navigation Menu',
];

// Array of widgets
// final List<Widget> widgetExamples = [
//   // DropdownExample(
//   //   borderRadius: ModernStyles.borderRadius,
//   //   textStyle: ModernStyles.bodyTextStyle,
//   // ),
//   DisclosureExample(),
//   DialogExample(),
//   PopoverExample(),
//   TabsExample(),
//   TransitionExample(),
//   FormExample(),
//   ButtonExample(),
//   CheckboxExample(),
//   ComboboxExample(),
//   InputExample(),
//   ListboxExample(),
//   RadioGroupExample(),
//   SwitchExample(),
//   TextareaExample(),
//   DatePickerExample(),
//   TimePickerExample(),
//   ToastNotificationExample(),
//   StepperExample(),
//   TooltipExample(),
//   DraggableScrollableSheetExample(),
//   LinearProgressIndicatorExample(),
//   CircularProgressIndicatorExample(),
//   SliderExample(),
//   ImageSliderExample(),
//   NavigationMenu(),
// ];
