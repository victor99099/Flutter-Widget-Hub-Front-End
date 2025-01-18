import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutterwidgethub/Views/MainScreens/mainScreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_date_picker/scrollable_date_picker.dart';

Future<void> main() async {
  await initializeDateFormatting();

  runApp(const MyApp());
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
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.nunito().fontFamily,
      ),
      home: const MainScreen(),
    );
  }
}
