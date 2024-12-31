import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModernStyles {
  // General Styling
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(12));
  static const Color baseColor = Colors.grey;
  static const Color activeColor = Colors.blue;
  static const Color backgroundColor = Colors.white;

  // Text Styles with Google Fonts
  static final TextStyle headingTextStyle = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
  static final TextStyle bodyTextStyle = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );
  static final TextStyle buttonTextStyle = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static final TextStyle subtitleTextStyle = 
  GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  // Button Style
  static final ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(activeColor),
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
    shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: borderRadius,
    )),
  );

  // Input Decoration
  static const InputDecoration inputDecoration = InputDecoration(
    filled: true,
    fillColor: Color(0xFFF0F0F0),
    border: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: activeColor,width: 4),
    ),
    hintStyle: TextStyle(color: Colors.grey),
    hintText: "Enter",
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );

  // Shadows
  static const List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 8,
      offset: Offset(0, 4),
    ),
  ];

  // Card Style
  static const BoxDecoration cardDecoration = BoxDecoration(
    color: backgroundColor,
    borderRadius: borderRadius,
    boxShadow: boxShadow,
  );
}

class ClassicStyles {
  // General Styling
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(4));
  static const Color baseColor = Colors.black;
  static const Color activeColor = Colors.brown;
  static const Color backgroundColor = Colors.white;

  // Text Styles with Google Fonts
  static final TextStyle headingTextStyle = GoogleFonts.ptSerif(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: baseColor,
  );
  static final TextStyle bodyTextStyle = GoogleFonts.merriweather(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.brown,
  );
  static final TextStyle buttonTextStyle = GoogleFonts.merriweather(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static final TextStyle subtitleTextStyle = GoogleFonts.courgette(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: Colors.grey,
  );

  // Button Style
  static final ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(activeColor),
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
    shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: borderRadius,
    )),
  );

  // Input Decoration
  static const InputDecoration inputDecoration = InputDecoration(
    filled: true,
    fillColor: Color(0xFFF5F5F5),
    border: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: activeColor,width: 4),
    ),
    hintStyle: TextStyle(color: Colors.grey),
    hintText: "Enter",
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  );

  // Shadows
  static const List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.black26,
      blurRadius: 4,
      offset: Offset(0, 2),
    ),
  ];

  // Card Style
  static const BoxDecoration cardDecoration = BoxDecoration(
    color: backgroundColor,
    borderRadius: borderRadius,
    boxShadow: boxShadow,
  );
}

class ElegantStyles {
  // General Styling
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(16));
  static const Color baseColor = Color(0xFF4A4A4A);
  static const Color activeColor = Color(0xFF6A5ACD); // Soft purple
  static const Color backgroundColor = Color(0xFFF9F9F9);

  // Text Styles with Google Fonts
  static final TextStyle headingTextStyle = GoogleFonts.playfairDisplay(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: baseColor,
    letterSpacing: 1.2,
  );
  static final TextStyle bodyTextStyle = GoogleFonts.nunito(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: const Color(0xFF2F2F2F),
  );
  static final TextStyle buttonTextStyle = GoogleFonts.nunito(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color:Colors.white,
  );
  static final TextStyle subtitleTextStyle = GoogleFonts.dancingScript(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: Colors.black54,
  );

  // Button Style
  static final ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(activeColor),
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 12)),
    shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: borderRadius,
    )),
    elevation: WidgetStatePropertyAll(5),
  );

  // Input Decoration
  static const InputDecoration inputDecoration = InputDecoration(
    filled: true,
    fillColor: Color(0xFFF2F2F2),
    border: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: baseColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: activeColor,width: 4),
    ),
    hintText: "Enter",
    hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );

  // Shadows
  static const List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 12,
      offset: Offset(0, 6),
    ),
  ];

  // Card Style
  static const BoxDecoration cardDecoration = BoxDecoration(
    color: backgroundColor,
    borderRadius: borderRadius,
    boxShadow: boxShadow,
  );
}

ButtonStyle getElevatedButtonStyle() {
  return ElevatedButton.styleFrom(
    elevation: 4,
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: ModernStyles.borderRadius,
    ),
    backgroundColor: ModernStyles.activeColor,
    foregroundColor: Colors.white, // Text color
  );
}
