import 'package:flutterwidgethub/Views/SeparateWidgets/Button.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/CheckBox.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/ComboBox.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/DatePicker.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Dialog.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Disclosure.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/DraggableSheet.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/DropDownMenu.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Form.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/ImageSlider.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Input.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Listbox.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/NavigationMenu.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Popover.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/ProgessIndicator.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/RadioGroup.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Slider.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Stepper.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Switch.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Tabs.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/TimePicker.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/ToastNotification.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/ToolTip.dart';
import 'package:flutterwidgethub/Views/SeparateWidgets/Transition.dart';
import 'package:get/get.dart';

class CustomPageController extends GetxController {
  RxInt SelectedPage = 0.obs;

  final screens = [
    const DropDownPage(),
    DisclosurePage(),
    DialogPage(),
    PopoverPage(),
    TabsPage(),
    const TransitionPage(),
    FormPage(),
    ButtonPage(),
    CheckboxPage(),
    const ComboboxPage(),
    InputPage(),
    ListboxPage(),
    RadioPage(),
    SwitchPage(),
    DatepickerPage(),
    TimepickerPage(),
    NotificationPage(),
    StepperPage(),
    TooltipPage(),
    DraggablesheetPage(),
    IndicatorPage(),
    SliderPage(),
    const ImagesliderPage(),
    NavigationPage()
  ];
}
