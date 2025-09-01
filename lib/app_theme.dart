import 'package:flutter/material.dart';
// Simple minimal theme for beginners.
import 'package:google_fonts/google_fonts.dart';

ThemeData buildTheme() {
  // Using a seed color automatically creates a ColorScheme.
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    textTheme: GoogleFonts.openSansTextTheme(),
    scaffoldBackgroundColor: Colors.white,
  );
}

