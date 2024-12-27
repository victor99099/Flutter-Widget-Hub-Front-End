import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';
import '../MainScreens/CommonWidgets.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});
  final List<Map<String, String>> snackBarOptions = [
    {
      "Property": "content",
      "Possible Values": "Widget",
      "Description": "The content displayed inside the snack bar."
    },
    {
      "Property": "backgroundColor",
      "Possible Values": "Color?",
      "Description": "The background color of the snack bar."
    },
    {
      "Property": "elevation",
      "Possible Values": "double?",
      "Description":
          "The elevation of the snack bar, which determines its shadow."
    },
    {
      "Property": "margin",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "The margin around the snack bar."
    },
    {
      "Property": "padding",
      "Possible Values": "EdgeInsetsGeometry?",
      "Description": "The padding inside the snack bar around its content."
    },
    {
      "Property": "width",
      "Possible Values": "double?",
      "Description": "The width of the snack bar."
    },
    {
      "Property": "shape",
      "Possible Values": "ShapeBorder?",
      "Description": "The shape of the snack bar's boundary."
    },
    {
      "Property": "hitTestBehavior",
      "Possible Values": "HitTestBehavior?",
      "Description":
          "Determines whether the snack bar responds to touch events."
    },
    {
      "Property": "behavior",
      "Possible Values": "SnackBarBehavior?",
      "Description":
          "Defines the snack bar's display behavior (floating or fixed)."
    },
    {
      "Property": "action",
      "Possible Values": "SnackBarAction?",
      "Description":
          "An action that can be added to the snack bar (e.g., a button)."
    },
    {
      "Property": "actionOverflowThreshold",
      "Possible Values": "double?",
      "Description":
          "The threshold at which to display the action overflow menu."
    },
    {
      "Property": "showCloseIcon",
      "Possible Values": "bool?",
      "Description": "Whether to display a close icon on the snack bar."
    },
    {
      "Property": "closeIconColor",
      "Possible Values": "Color?",
      "Description": "The color of the close icon on the snack bar."
    },
    {
      "Property": "duration",
      "Possible Values": "Duration",
      "Description": "The duration for which the snack bar will be shown."
    },
    {
      "Property": "animation",
      "Possible Values": "Animation<double>?",
      "Description":
          "The animation applied to the snack bar during its display."
    },
    {
      "Property": "onVisible",
      "Possible Values": "void Function()?",
      "Description":
          "Callback that is triggered when the snack bar becomes visible."
    },
    {
      "Property": "dismissDirection",
      "Possible Values": "DismissDirection?",
      "Description": "The direction in which the snack bar can be dismissed."
    },
    {
      "Property": "clipBehavior",
      "Possible Values": "Clip",
      "Description": "Defines how the snack bar's content is clipped."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 15, right: 30),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Toast Notifications",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Toast notifications in Flutter are small, non-intrusive messages that appear temporarily at the bottom of the screen to provide feedback or updates to users. They typically auto-dismiss after a short duration and do not interrupt user interactions. To show a toast, Flutter packages like fluttertoast or fluttertoast_plus can be used, allowing customization of duration, position, and message style. Toasts are often used for displaying success, error, or informational messages in a subtle way.",
              style: TextStyle(
                color: Color(0xFFF0F0F0),
                fontSize: 17,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
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
            SizedBox(
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
                        labelStyle: TextStyle(
                            letterSpacing: 1.5, fontWeight: FontWeight.w500),
                        padding: EdgeInsets.only(top: 10),
                        labelPadding: EdgeInsets.all(5),
                        indicatorPadding: EdgeInsets.all(0),
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
                    Container(
                      height: MediaQuery.of(context).size.height * 0.58,
                      child: TabBarView(
                        children: [
                          CodeAndPreview(
                              code: '''
class ToastNotification extends StatelessWidget {
  const ToastNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {
        final snackBar = SnackBar(
          backgroundColor: Colors.blue,
          content: Text('This is a toast notification!',
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              )),
          behavior: SnackBarBehavior.floating,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Text('Show Toast',
          style: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          )),
    );
  }
}
''',
                              swidget: ToastNotificationExample(
                                  buttonTextStyle: ModernStyles.buttonTextStyle,
                                  activeColor: ModernStyles.activeColor)),
                          CodeAndPreview(
                              code: '''
class Popover extends StatelessWidget {
  const Popover({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: PopupMenuButton<String>(
        icon: Icon(Icons.more_vert, color: Colors.brown),
        itemBuilder: (context) => [
          PopupMenuItem(
              value: 'Item 1',
              child: Text('Item 1',
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.brown,
                  ))),
          PopupMenuItem(
              value: 'Item 2',
              child: Text('Item 2',
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.brown,
                  ))),
        ],
      ),
    );
  }
}
''',
                              swidget: ToastNotificationExample(
                                  buttonTextStyle:
                                      ClassicStyles.buttonTextStyle,
                                  activeColor: ClassicStyles.activeColor)),
                          CodeAndPreview(
                              code: '''
class ToastNotification extends StatelessWidget {
  const ToastNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {
        final snackBar = SnackBar(
          backgroundColor: Color(0xFF6A5ACD),
          content: Text('This is a toast notification!',
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              )),
          behavior: SnackBarBehavior.floating,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Text('Show Toast',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
    );
  }
}
''',
                              swidget: ToastNotificationExample(
                                  buttonTextStyle:
                                      ElegantStyles.buttonTextStyle,
                                  activeColor: ElegantStyles.activeColor)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Styling",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            StyleSection(
              options: snackBarOptions,
            ),
            SizedBox(
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
            SizedBox(
              height: 20,
            ),
            Text(
              "◆  Using elegant_notification",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            SingleCodeAndPreview(code: '''
class CustomNotification extends StatelessWidget {
  const CustomNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {
        ElegantNotification(
          title: Text("New version"),
          description: Text("A new version is available to you please update."),
          icon: Icon(
            Icons.access_alarm,
            color: Colors.orange,
          ),
          progressIndicatorColor: Colors.orange,
        ).show(context);
      },
      child: Text('Show Toast',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
    );
  }
}
''', widget: CustomNotification()),
            SizedBox(
              height: 10,
            ),
            TerminalRun(package: "elegant_notification"),
            SizedBox(
              height: 10,
            ),
            ImportCopyContainer(
              code:
                  "import 'package:elegant_notification/elegant_notification.dart';",
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Types of Elegant Notifications",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
            TypeBoxNoBody(
                Heading: "1 - Information",
                code: '''
class InfoNotification extends StatelessWidget {
  const InfoNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {
        ElegantNotification.info(
          title: Text("Info"),
          description: Text("This account will be updated once you exit"),
          icon: Icon(
            Icons.access_alarm,
            color: Colors.orange,
          ),
        ).show(context);
      },
      child: Text('Show Toast',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
    );
  }
}
''',
                widget: InfoNotification()),
            TypeBoxNoBody(
                Heading: "2 - Success",
                code: '''
class SuccessNotification extends StatelessWidget {
  const SuccessNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {
        ElegantNotification.success(
          title: Text("Update"),
          description: Text("Your data has been updated"),
          onDismiss: () {
            print('Message when the notification is dismissed');
          },
          onNotificationPressed: () {
            print('Message when the notification is pressed');
          },
          isDismissable: true,
        ).show(context);
      },
      child: Text('Show Toast',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
    );
  }
}
''',
                widget: SuccessNotification()),
            TypeBoxNoBody(
                Heading: "3 - Error",
                code: '''
class ErrorNotification extends StatelessWidget {
  const ErrorNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: Text('Error'),
          description: Text('Error example notification'),
          onDismiss: () {},
        ).show(context);
      },
      child: Text('Show Toast',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
    );
  }
}
''',
                widget: ErrorNotification()),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class ToastNotificationExample extends StatelessWidget {
  final TextStyle buttonTextStyle;
  final Color activeColor;
  const ToastNotificationExample(
      {Key? key, required this.activeColor, required this.buttonTextStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {
        final snackBar = SnackBar(
          backgroundColor: activeColor,
          content: Text(
            'This is a toast notification!',
            style: buttonTextStyle,
          ),
          behavior: SnackBarBehavior.floating,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Text(
        'Show Toast',
        style: buttonTextStyle,
      ),
    );
  }
}

class ToastNotification extends StatelessWidget {
  const ToastNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {
        final snackBar = SnackBar(
          backgroundColor: Color(0xFF6A5ACD),
          content: Text('This is a toast notification!',
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              )),
          behavior: SnackBarBehavior.floating,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Text('Show Toast',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
    );
  }
}

class CustomNotification extends StatelessWidget {
  const CustomNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {
        ElegantNotification(
          title: Text("New version"),
          description: Text("A new version is available to you please update."),
          icon: Icon(
            Icons.access_alarm,
            color: Colors.orange,
          ),
          progressIndicatorColor: Colors.orange,
        ).show(context);
      },
      child: Text('Show Toast',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
    );
  }
}

class InfoNotification extends StatelessWidget {
  const InfoNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {
        ElegantNotification.info(
          title: Text("Info"),
          description: Text("This account will be updated once you exit"),
          icon: Icon(
            Icons.access_alarm,
            color: Colors.orange,
          ),
        ).show(context);
      },
      child: Text('Show Toast',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
    );
  }
}

class ErrorNotification extends StatelessWidget {
  const ErrorNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: Text('Error'),
          description: Text('Error example notification'),
          onDismiss: () {},
        ).show(context);
      },
      child: Text('Show Toast',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
    );
  }
}

class SuccessNotification extends StatelessWidget {
  const SuccessNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(4),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        foregroundColor: WidgetStatePropertyAll(Colors.white), // Text color
      ),
      onPressed: () {
        ElegantNotification.success(
          title: Text("Update"),
          description: Text("Your data has been updated"),
          onDismiss: () {
            print('Message when the notification is dismissed');
          },
          onNotificationPressed: () {
            print('Message when the notification is pressed');
          },
          isDismissable: true,
        ).show(context);
      },
      child: Text('Show Toast',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
    );
  }
}
