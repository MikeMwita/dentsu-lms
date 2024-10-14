import 'package:dentsulms/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final textTheme = TextTheme(
    bodyMedium: TextStyle(
  fontFamily: GoogleFonts.dmSans().fontFamily,
));

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: GoogleFonts.dmSans().fontFamily,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: const AppBarTheme(
          // color: appBarColor,
          ),
      textTheme: textTheme,
      cardTheme: const CardTheme(
        color: Colors.white, // Set the default card background color to white
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
        // Customize dark theme if needed
        textTheme: textTheme);
  }
}
