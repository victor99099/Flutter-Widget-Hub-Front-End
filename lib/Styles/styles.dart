// Modern Styles
import 'package:flutter/material.dart';

class ModernStyles {
  // General Styling
  static const BorderRadius borderRadius =
      BorderRadius.all(Radius.circular(12));
  static const Color baseColor = Colors.grey;
  static const Color activeColor = Colors.blue;
  static const Color backgroundColor = Colors.white;

  // Text Styles
  static const TextStyle headingTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );
  static const TextStyle subtitleTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  // Button Style
  static final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: activeColor,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius,
    ),
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
      borderSide: BorderSide(color: activeColor),
    ),
    hintStyle: TextStyle(color: Colors.grey),
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

  // Text Styles
  static const TextStyle headingTextStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: baseColor,
  );
  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );
  static const TextStyle subtitleTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: Colors.grey,
  );

  // Button Style
  static final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: activeColor,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius,
    ),
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
      borderSide: BorderSide(color: activeColor),
    ),
    hintStyle: TextStyle(color: Colors.grey),
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
  static const BorderRadius borderRadius =
      BorderRadius.all(Radius.circular(16));
  static const Color baseColor = Color(0xFF4A4A4A);
  static const Color activeColor = Color(0xFF6A5ACD); // Soft purple
  static const Color backgroundColor = Color(0xFFF9F9F9);

  // Text Styles
  static const TextStyle headingTextStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: baseColor,
    letterSpacing: 1.2,
  );
  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Color(0xFF2F2F2F),
  );
  static const TextStyle subtitleTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: Colors.black54,
  );

  // Button Style
  static final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: activeColor,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius,
    ),
    elevation: 5,
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
      borderSide: BorderSide(color: activeColor),
    ),
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
    shape: RoundedRectangleBorder(
      borderRadius: ModernStyles.borderRadius,
    ),
    backgroundColor: ModernStyles.activeColor,
    foregroundColor: Colors.white, // Text color
  );
}