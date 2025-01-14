import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:ndialog/ndialog.dart';
import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class DialogPage extends StatelessWidget {
  DialogPage({super.key});
  final List<Map<String, String>> dialogOptions = [
    {
      "Property": "context",
      "Possible Values": "BuildContext",
      "Description": "The context in which the dialog will be displayed."
    },
    {
      "Property": "builder",
      "Possible Values": "Widget Function(BuildContext)",
      "Description":
          "A builder function that returns the dialog widget. Common types include:"
              " AlertDialog, "
              " SimpleDialog, & "
              " Custom Dialog "
    },
    {
      "Property": "barrierDismissible",
      "Possible Values": "bool",
      "Description": "Whether tapping outside the dialog dismisses it."
    },
    {
      "Property": "barrierColor",
      "Possible Values": "Color?",
      "Description": "The color of the barrier (background) behind the dialog."
    },
    {
      "Property": "barrierLabel",
      "Possible Values": "String?",
      "Description":
          "A label for the barrier, typically used for accessibility purposes."
    },
    {
      "Property": "useSafeArea",
      "Possible Values": "bool",
      "Description": "Whether to use SafeArea to avoid system UI intrusions."
    },
    {
      "Property": "useRootNavigator",
      "Possible Values": "bool",
      "Description": "Whether to use the root navigator for the dialog or not."
    },
    {
      "Property": "routeSettings",
      "Possible Values": "RouteSettings?",
      "Description": "Settings for the route, including the name and arguments."
    },
    {
      "Property": "anchorPoint",
      "Possible Values": "Offset?",
      "Description":
          "The anchor point for the dialog, used for positioning the dialog."
    },
    {
      "Property": "traversalEdgeBehavior",
      "Possible Values": "TraversalEdgeBehavior?",
      "Description":
          "Defines the behavior when traversing edges of the dialog for focus."
    },
  ];

  final List<Map<String, String>> alertDialogOptions = [
    {
      "Property": "title",
      "Possible Values": "Widget?",
      "Description": "The main heading or title of the dialog."
    },
    {
      "Property": "content",
      "Possible Values": "Widget?",
      "Description":
          "The body or content area of the dialog, often used for descriptions or messages."
    },
    {
      "Property": "actions",
      "Possible Values": "List<Widget>",
      "Description":
          "A list of widgets displayed at the bottom, typically action buttons like 'OK' or 'Cancel'."
    },
    {
      "Property": "scrollable",
      "Possible Values": "bool",
      "Description":
          "Whether the dialog content should be scrollable if it's too large."
    },
    {
      "Property": "backgroundColor",
      "Possible Values": "Color?",
      "Description": "The background color of the dialog."
    },
    {
      "Property": "elevation",
      "Possible Values": "double?",
      "Description":
          "The z-coordinate of the dialog’s shadow, affecting the elevation."
    },
    {
      "Property": "semanticLabel",
      "Possible Values": "String?",
      "Description":
          "An accessibility label used by screen readers for the dialog."
    },
    {
      "Property": "shape",
      "Possible Values": "ShapeBorder?",
      "Description": "Defines the shape of the dialog, such as rounded corners."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip?",
      "Description": "Defines the clipping behavior for the dialog’s content."
    },
  ];
  final List<Map<String, String>> simpleDialogOptions = [
    {
      "Property": "title",
      "Possible Values": "Widget?",
      "Description":
          "A widget displayed at the top of the dialog, often used for a title."
    },
    {
      "Property": "children",
      "Possible Values": "List<Widget>",
      "Description":
          "A list of widgets that are displayed as options in the dialog."
    },
    {
      "Property": "backgroundColor",
      "Possible Values": "Color?",
      "Description": "The background color of the dialog."
    },
    {
      "Property": "elevation",
      "Possible Values": "double?",
      "Description":
          "The z-coordinate of the dialog's shadow, affecting its elevation."
    },
    {
      "Property": "semanticLabel",
      "Possible Values": "String?",
      "Description":
          "An accessibility label used by screen readers for the dialog."
    },
    {
      "Property": "shape",
      "Possible Values": "ShapeBorder?",
      "Description": "Defines the shape of the dialog, e.g., rounded corners."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip?",
      "Description": "Defines the clipping behavior for the dialog’s content."
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
              "Dialog Box",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "In Flutter, a Dialog is a pop-up window that appears on top of the current screen to display content or get user input. It can be created using the showDialog function and typically includes options like buttons, text, and other widgets. The dialog is modal, meaning the user must interact with it before returning to the main content. Common dialog types include AlertDialog, SimpleDialog, and custom dialogs.",
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
                          CodeAndPreviewWithSave(
                              Number: 3,
                              name: "Dialog",
                              code: '''
void showNormalDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        'Dialog Title',
        style: GoogleFonts.roboto(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
      content: Text(
        'This is the dialog content',
        style: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black87,
        ),
      ),
      actions: [
        TextButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.blue),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              )),
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Close',
            style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
''',
                              swidget: DialogExample(
                                func: () => showNormalDialog(
                                    context,
                                    ModernStyles.bodyTextStyle,
                                    ModernStyles.headingTextStyle,
                                    ModernStyles.buttonStyle,
                                    ModernStyles.buttonTextStyle),
                              )),
                          CodeAndPreviewWithSave(
                              Number: 3,
                              name: "Dialog",
                              code: '''
void showNormalDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        'Dialog Title',
        style: GoogleFonts.ptSerif(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      content: Text(
        'This is the dialog content',
        style: GoogleFonts.merriweather(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.brown,
        ),
      ),
      actions: [
        TextButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.brown),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              )),
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Close',
            style: GoogleFonts.merriweather(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
''',
                              swidget: DialogExample(
                                func: () => showNormalDialog(
                                    context,
                                    ClassicStyles.bodyTextStyle,
                                    ClassicStyles.headingTextStyle,
                                    ClassicStyles.buttonStyle,
                                    ClassicStyles.buttonTextStyle),
                              )),
                          CodeAndPreviewWithSave(
                              Number: 3,
                              name: "Dialog",
                              code: '''
void showNormalDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        'Dialog Title',
        style: GoogleFonts.playfairDisplay(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Color(0xFF4A4A4A),
          letterSpacing: 1.2,
        ),
      ),
      content: Text(
        'This is the dialog content',
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Color(0xFF2F2F2F),
        ),
      ),
      actions: [
        TextButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Color(0xFF6A5ACD)),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 20, vertical: 12)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              )),
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Close',
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
''',
                              swidget: DialogExample(
                                func: () => showNormalDialog(
                                    context,
                                    ElegantStyles.bodyTextStyle,
                                    ElegantStyles.headingTextStyle,
                                    ElegantStyles.buttonStyle,
                                    ElegantStyles.buttonTextStyle),
                              )),
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
              "Styling for showDialog()",
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
              options: dialogOptions,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "◆  Styling for Alert Dialog",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            StyleSection(
              options: alertDialogOptions,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "◆  Styling for Simple Dialog",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            StyleSection(
              options: simpleDialogOptions,
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
              "◆  Using awesome_dialog (Animated, Pre-Styled Dialogs)",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleCodeAndPreview(code: '''
void showAwesomeDialog(BuildContext context) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.info, // Options: success, error, warning, etc.
    headerAnimationLoop: false,
    animType: AnimType.bottomSlide,
    title: 'Awesome Dialog Title',
    desc: 'This is a highly customizable dialog.',
    btnCancelOnPress: () {},
    btnOkOnPress: () {},
  ).show();
}
''', widget: DialogExample(func: () => showAwesomeDialog(context))),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "awesome_dialog"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code: "import 'package:awesome_dialog/awesome_dialog.dart';",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "◆  Using adaptive_dialog (Platform-Specific Dialogs)",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleCodeAndPreview(code: '''
void showAdaptiveDialog(BuildContext context) async {
  final result = await showOkCancelAlertDialog(
    context: context,
    title: 'Confirm Action',
    message: 'This dialog adapts to platform styles.',
  );
  if (result == OkCancelResult.ok) print("Confirmed");
}
''', widget: DialogExample(func: () => showAdaptiveDialog(context))),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "adaptive_dialog"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code: "import 'package:adaptive_dialog/adaptive_dialog.dart';",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "◆  Using ndialog (Custom Widget Dialogs)",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleCodeAndPreview(code: '''
void showNDialog(BuildContext context) {
  NDialog(
    dialogStyle: DialogStyle(titleDivider: true),
    title: Text("Custom Dialog"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("This is a highly customizable dialog."),
        SizedBox(height: 10),
      ],
    ),
    actions: [
      TextButton(onPressed: () => Navigator.pop(context), child: Text("Close")),
    ],
  ).show(context);
}
''', widget: DialogExample(func: () => showNDialog(context))),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "ndialog"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code: "import 'package:ndialog/ndialog.dart';",
            ),
            const SizedBox(
              height: 20,
            ),
            const ComparisonTable(
              headers: [
                "Feature",
                "awesome_dialog",
                "adaptive_dialog",
                "ndialog",
              ],
              body: [
                ["Multi-Level Support", "❌", "❌", "✅"],
                ["Animation Options", "✅", "❌", "❌"],
                ["Card/Panel Style", "❌", "✅", "✅"],
              ],
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

class DialogExample extends StatelessWidget {
  final VoidCallback func;
  const DialogExample({
    super.key,
    required this.func,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {
        func();
      },
      child: const Text('Show Dialog'),
    );
  }
}

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

void showAwesomeDialog(BuildContext context) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.info, // Options: success, error, warning, etc.
    headerAnimationLoop: false,
    animType: AnimType.bottomSlide,
    title: 'Awesome Dialog Title',
    desc: 'This is a highly customizable dialog.',
    btnCancelOnPress: () {},
    btnOkOnPress: () {},
  ).show();
}

void showAdaptiveDialog(BuildContext context) async {
  final result = await showOkCancelAlertDialog(
    context: context,
    title: 'Confirm Action',
    message: 'This dialog adapts to platform styles.',
  );
  if (result == OkCancelResult.ok) print("Confirmed");
}

void showNDialog(BuildContext context) {
  NDialog(
    dialogStyle: DialogStyle(titleDivider: true),
    title: const Text("Custom Dialog"),
    content: const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("This is a highly customizable dialog."),
        SizedBox(height: 10),
      ],
    ),
    actions: [
      TextButton(
          onPressed: () => Navigator.pop(context), child: const Text("Close")),
    ],
  ).show(context);
}
