import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutterwidgethub/Views/MainScreens/mainScreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_date_picker/scrollable_date_picker.dart';
import 'dart:html' as html;
import 'dart:ui_web' as ui;

Future<void> main() async {
  await initializeDateFormatting();
  ui.platformViewRegistry.registerViewFactory(
    'google-ad',
    (int viewId) => html.IFrameElement()
      ..width = '100%' // Set width to 100% of the parent container
      ..height = '100%' // Set height to 100% of the parent container
      ..srcdoc = """
          <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4379423647005725" crossorigin="anonymous"></script>
          <ins class="adsbygoogle"
              style="display:block"
              data-ad-client="ca-pub-4379423647005725"
              data-ad-slot="4386122120"
              data-ad-format="auto"
              data-full-width-responsive="true"></ins>
          <script>
              (adsbygoogle = window.adsbygoogle || []).push({});
          </script>
        """,
  );
  runApp(const MyApp());
}

class GoogleAdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HtmlElementView(
      viewType: 'google-ad',
      // Unique identifier for this view type
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets Hub',
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStatePropertyAll(Colors.white.withOpacity(0.5)), // Set thumb color
          trackColor: MaterialStatePropertyAll(
              const Color.fromARGB(255, 185, 185, 185)), // Set track color
          radius: const Radius.circular(8), // Round edges
          thickness: MaterialStatePropertyAll(8), // Set thumb thickness
        ),
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.nunito().fontFamily,
      ),
      home: const ResponsiveUi(),
    );
  }
}

class ResponsiveUi extends StatelessWidget {
  const ResponsiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 500) {
      // Display a "not supported" message for small screens
      return const MobileNotSupportedScreen();
    } else {
      // Display the main UI for larger screens
      return const MainScreen();
    }
  }
}

class MobileNotSupportedScreen extends StatelessWidget {
  const MobileNotSupportedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.desktop_mac, size: 100, color: Colors.blueGrey.shade400),
            const SizedBox(height: 20),
            const Text(
              'This application is best experienced on a laptop or desktop.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.blueGrey),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Optionally provide a way to exit or retry
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Please access this app on a larger screen.'),
                  ),
                );
              },
              child: const Text('Got It'),
            ),
          ],
        ),
      ),
    );
  }
}
