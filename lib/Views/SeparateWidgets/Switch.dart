import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_switcher/slide_switcher.dart';
import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class SwitchPage extends StatelessWidget {
  SwitchPage({super.key});

  final List<Map<String, String>> properties = [
    {
      "Property": "value",
      "Possible Values": "bool",
      "Description": "The current value of the switch."
    },
    {
      "Property": "onChanged",
      "Possible Values": "void Function(bool)?",
      "Description": "Callback triggered when the switch state changes."
    },
    {
      "Property": "activeColor",
      "Possible Values": "Color?",
      "Description": "The color of the switch when active."
    },
    {
      "Property": "activeTrackColor",
      "Possible Values": "Color?",
      "Description": "The color of the track when the switch is active."
    },
    {
      "Property": "inactiveThumbColor",
      "Possible Values": "Color?",
      "Description": "The color of the thumb when the switch is inactive."
    },
    {
      "Property": "inactiveTrackColor",
      "Possible Values": "Color?",
      "Description": "The color of the track when the switch is inactive."
    },
    {
      "Property": "activeThumbImage",
      "Possible Values": "ImageProvider<Object>?",
      "Description": "The image to display for the active thumb."
    },
    {
      "Property": "onActiveThumbImageError",
      "Possible Values": "void Function(Object, StackTrace?)?",
      "Description":
          "Callback triggered when there is an error loading the active thumb image."
    },
    {
      "Property": "inactiveThumbImage",
      "Possible Values": "ImageProvider<Object>?",
      "Description": "The image to display for the inactive thumb."
    },
    {
      "Property": "onInactiveThumbImageError",
      "Possible Values": "void Function(Object, StackTrace?)?",
      "Description":
          "Callback triggered when there is an error loading the inactive thumb image."
    },
    {
      "Property": "thumbColor",
      "Possible Values": "WidgetStateProperty<Color?>?",
      "Description": "The color of the thumb at different widget states."
    },
    {
      "Property": "trackColor",
      "Possible Values": "WidgetStateProperty<Color?>?",
      "Description": "The color of the track at different widget states."
    },
    {
      "Property": "trackOutlineColor",
      "Possible Values": "WidgetStateProperty<Color?>?",
      "Description":
          "The outline color of the track at different widget states."
    },
    {
      "Property": "thumbIcon",
      "Possible Values": "WidgetStateProperty<Icon?>?",
      "Description":
          "The icon to display on the thumb at different widget states."
    },
    {
      "Property": "materialTapTargetSize",
      "Possible Values": "MaterialTapTargetSize?",
      "Description": "Defines the tap target size of the widget."
    },
    {
      "Property": "dragStartBehavior",
      "Possible Values": "DragStartBehavior",
      "Description": "Defines the drag start behavior for the switch."
    },
    {
      "Property": "mouseCursor",
      "Possible Values": "MouseCursor?",
      "Description":
          "The mouse cursor to display when the pointer is over the switch."
    },
    {
      "Property": "overlayColor",
      "Possible Values": "WidgetStateProperty<Color?>?",
      "Description":
          "The overlay color for the switch at different widget states."
    },
    {
      "Property": "splashRadius",
      "Possible Values": "double?",
      "Description":
          "The radius of the splash effect when tapping on the switch."
    },
    {
      "Property": "focusNode",
      "Possible Values": "FocusNode?",
      "Description": "The focus node for the switch."
    },
    {
      "Property": "onFocusChange",
      "Possible Values": "void Function(bool)?",
      "Description": "Callback triggered when the focus of the switch changes."
    },
    {
      "Property": "autofocus",
      "Possible Values": "bool",
      "Description":
          "Whether the switch should autofocus when the screen opens."
    },
    {
      "Property": "tileColor",
      "Possible Values": "Color?",
      "Description": "The color of the tile on which the switch is placed."
    },
    {
      "Property": "title",
      "Possible Values": "Widget?",
      "Description": "The title of the switch widget."
    },
    {
      "Property": "subtitle",
      "Possible Values": "Widget?",
      "Description": "The subtitle of the switch widget."
    },
    {
      "Property": "isThreeLine",
      "Possible Values": "bool",
      "Description": "Whether the switch should be displayed with three lines."
    },
    {
      "Property": "dense",
      "Possible Values": "bool?",
      "Description": "Whether the switch should be displayed compactly."
    },
    {
      "Property": "secondary",
      "Possible Values": "Widget?",
      "Description":
          "The secondary widget, like an icon, to display next to the switch."
    },
    {
      "Property": "selected",
      "Possible Values": "bool",
      "Description": "Whether the switch is selected."
    },
    {
      "Property": "controlAffinity",
      "Possible Values": "ListTileControlAffinity?",
      "Description": "The alignment of the switch within the list tile."
    },
    {
      "Property": "shape",
      "Possible Values": "ShapeBorder?",
      "Description": "The shape of the switch."
    },
    {
      "Property": "selectedTileColor",
      "Possible Values": "Color?",
      "Description":
          "The background color of the tile when the switch is selected."
    },
    {
      "Property": "visualDensity",
      "Possible Values": "VisualDensity?",
      "Description": "Controls the visual density of the switch."
    },
    {
      "Property": "enableFeedback",
      "Possible Values": "bool?",
      "Description":
          "Whether to provide visual feedback when interacting with the switch."
    },
    {
      "Property": "hoverColor",
      "Possible Values": "Color?",
      "Description": "The color of the switch when hovered."
    },
    {
      "Property": "internalAddSemanticForOnTap",
      "Possible Values": "bool",
      "Description":
          "Whether to automatically add semantics for the onTap event."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 15, right: 30),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Switch",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "The Switch widget in Flutter is a toggle button that lets users switch between two states, ON and OFF. It is commonly used for settings or preferences.",
              style: TextStyle(
                color: Color(0xFFF0F0F0),
                fontSize: 17,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "1 - Built-in widget",
              style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.7,
              child: DefaultTabController(
                length: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Material(
                      color: Colors.transparent,
                      elevation: 0,
                      borderRadius: BorderRadius.circular(10),
                      child: TabBar(
                        labelStyle: const TextStyle(
                            letterSpacing: 1.5, fontWeight: FontWeight.w500),
                        padding: const EdgeInsets.only(top: 10),
                        labelPadding: const EdgeInsets.all(5),
                        indicatorPadding: const EdgeInsets.all(0),
                        dividerHeight: 0,
                        tabs: const [
                          Padding(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: Tab(text: 'Modern Style')),
                          Padding(
                            padding: EdgeInsets.only(left: 40, right: 40),
                            child: Tab(text: 'Classic Style'),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: Tab(text: 'Elegant Style')),
                        ],
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.58,
                      child: TabBarView(
                        children: [
                          CodeAndPreview(
                              code: '''
class SwitchTile extends StatefulWidget {
  SwitchTile({Key? key}) : super(key: key);

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: SwitchListTile(
        thumbColor: WidgetStatePropertyAll(Colors.blue),
        title: Text(
          'Enable Feature',
          style: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black87,
          ),
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
}
''',
                              swidget: SwitchExample(
                                  activeColor: ModernStyles.activeColor,
                                  bodyTextStyle: ModernStyles.bodyTextStyle,
                                  borderRadius: ModernStyles.borderRadius)),
                          CodeAndPreview(
                              code: '''
class SwitchTile extends StatefulWidget {
  SwitchTile({Key? key}) : super(key: key);

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: SwitchListTile(
        thumbColor: WidgetStatePropertyAll(Colors.blue),
        title: Text(
          'Enable Feature',
          style: GoogleFonts.merriweather(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.brown,
          ),
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
}
''',
                              swidget: SwitchExample(
                                  activeColor: ClassicStyles.activeColor,
                                  bodyTextStyle: ClassicStyles.bodyTextStyle,
                                  borderRadius: ClassicStyles.borderRadius)),
                          CodeAndPreview(
                              code: '''
class SwitchTile extends StatefulWidget {
  SwitchTile({Key? key}) : super(key: key);

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: SwitchListTile(
        thumbColor: WidgetStatePropertyAll(Color(0xFF6A5ACD)),
        title: Text(
          'Enable Feature',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xFF2F2F2F),
          ),
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
}
''',
                              swidget: SwitchExample(
                                  activeColor: ElegantStyles.activeColor,
                                  bodyTextStyle: ElegantStyles.bodyTextStyle,
                                  borderRadius: ElegantStyles.borderRadius)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Styling",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 20,
            ),
            StyleSection(
              options: properties,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "2 - External Packages",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "◆  Using slide_switcher",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleCodeAndPreview(code: '''
class SlideSwitcherExample extends StatefulWidget {
  @override
  _SlideSwitcherExampleState createState() => _SlideSwitcherExampleState();
}

class _SlideSwitcherExampleState extends State<SlideSwitcherExample> {
  int switcherIndex1 = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          SlideSwitcher(
            containerBorderRadius: 12,
            children: [
              Text('First'),
              Text('Second'),
            ],
            onSelect: (index) => setState(() => switcherIndex1 = index),
            containerHeight: 40,
            containerWight: 350,
          ),
          const SizedBox(height: 20),
          if (switcherIndex1 == 0) ...[
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            )
          ] else ...[
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            )
          ],
        ],
      ),
    );
  }
}
''', widget: SlideSwitcherExample()),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "slide_switcher"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code: "import 'package:slide_switcher/slide_switcher.dart';",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "◆  Using animated_toggle_switch",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleCodeAndPreview(code: '''
class AnimatedToggleSwitchWidget extends StatefulWidget {
  @override
  _AnimatedToggleSwitchWidgetState createState() =>
      _AnimatedToggleSwitchWidgetState();
}

class _AnimatedToggleSwitchWidgetState
    extends State<AnimatedToggleSwitchWidget> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: AnimatedToggleSwitch<bool>.dual(
        current: _isToggled,
        first: false,
        second: true,
        spacing: 50.0,
        style: const ToggleStyle(
          borderColor: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1.5),
            ),
          ],
        ),
        borderWidth: 5.0,
        height: 55,
        onChanged: (b) => setState(() => _isToggled = b),
        styleBuilder: (b) =>
            ToggleStyle(indicatorColor: b ? Colors.red : Colors.green),
        iconBuilder: (value) => value
            ? const Icon(Icons.coronavirus_rounded)
            : const Icon(Icons.tag_faces_rounded),
        textBuilder: (value) => value
            ? const Center(child: Text('Oh no...'))
            : const Center(child: Text('Nice :)')),
      ),
    );
  }
}
''', widget: AnimatedToggleSwitchExample()),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "animated_toggle_switch"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code: "import 'package:animated_toggle_switch/animated_toggle_switch.dart';",
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  final Color activeColor;
  final TextStyle bodyTextStyle;
  final BorderRadius borderRadius;
  const SwitchExample(
      {super.key,
      required this.activeColor,
      required this.bodyTextStyle,
      required this.borderRadius});

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
        borderRadius: widget.borderRadius,
      ),
      child: SwitchListTile(
        trackOutlineColor: const WidgetStatePropertyAll(Colors.black),
        activeColor: Colors.white,
        thumbColor: WidgetStatePropertyAll(widget.activeColor),
        title: Text(
          'Enable Feature',
          style: widget.bodyTextStyle,
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
}

class SwitchTile extends StatefulWidget {
  const SwitchTile({super.key});

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: SwitchListTile(
        thumbColor: const WidgetStatePropertyAll(Color(0xFF6A5ACD)),
        title: Text(
          'Enable Feature',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF2F2F2F),
          ),
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
}

class AnimatedToggleSwitchExample extends StatefulWidget {
  const AnimatedToggleSwitchExample({super.key});

  @override
  _AnimatedToggleSwitchExampleState createState() =>
      _AnimatedToggleSwitchExampleState();
}

class _AnimatedToggleSwitchExampleState
    extends State<AnimatedToggleSwitchExample> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: AnimatedToggleSwitch<bool>.dual(
        current: _isToggled,
        first: false,
        second: true,
        spacing: 50.0,
        style: const ToggleStyle(
          borderColor: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1.5),
            ),
          ],
        ),
        borderWidth: 5.0,
        height: 55,
        onChanged: (b) => setState(() => _isToggled = b),
        styleBuilder: (b) =>
            ToggleStyle(indicatorColor: b ? Colors.red : Colors.green),
        iconBuilder: (value) => value
            ? const Icon(Icons.coronavirus_rounded)
            : const Icon(Icons.tag_faces_rounded),
        textBuilder: (value) => value
            ? const Center(child: Text('Oh no...'))
            : const Center(child: Text('Nice :)')),
      ),
    );
  }
}

class SlideSwitcherExample extends StatefulWidget {
  const SlideSwitcherExample({super.key});

  @override
  _SlideSwitcherExampleState createState() => _SlideSwitcherExampleState();
}

class _SlideSwitcherExampleState extends State<SlideSwitcherExample> {
  int switcherIndex1 = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          SlideSwitcher(
            containerBorderRadius: 12,
            onSelect: (index) => setState(() => switcherIndex1 = index),
            containerHeight: 40,
            containerWight: 350,
            children: [
              Text('First'),
              Text('Second'),
            ],
          ),
          const SizedBox(height: 20),
          if (switcherIndex1 == 0) ...[
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            )
          ] else ...[
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            )
          ],
        ],
      ),
    ).paddingOnly(top:100, bottom: 70);
  }
}
