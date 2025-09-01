import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    textTheme: GoogleFonts.openSansTextTheme(),
    scaffoldBackgroundColor: Colors.white,
  );
}
