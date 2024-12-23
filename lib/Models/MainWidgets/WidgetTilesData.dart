// Array of titles
import 'package:flutter/material.dart';

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
  'Textarea',
  'DatePicker',
  'TimePicker',
  'Toast Notification',
  'Stepper',
  'Tooltip',
  'DraggableScrollableSheet',
  'LinearProgressIndicator',
  'CircularProgressIndicator',
  'Slider',
  'Image Slider',
  'Navigation Menu',
];

// Array of widgets
final List<Widget> widgetExamples = [
  const DropdownExample(),
  const DisclosureExample(),
  DialogExample(),
  const PopoverExample(),
  const TabsExample(),
  const TransitionExample(),
  const FormExample(),
  const ButtonExample(),
  const CheckboxExample(),
  const ComboboxExample(),
  const InputExample(),
  const ListboxExample(),
  const RadioGroupExample(),
  const SwitchExample(),
  const TextareaExample(),
  const DatePickerExample(),
  const TimePickerExample(),
  const ToastNotificationExample(),
  const StepperExample(),
  const TooltipExample(),
  const DraggableScrollableSheetExample(),
  const LinearProgressIndicatorExample(),
  const CircularProgressIndicatorExample(),
  const SliderExample(),
  const ImageSliderExample(),
  const NavigationMenu(),
];