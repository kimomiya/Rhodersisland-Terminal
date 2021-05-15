import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData.light().copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Colors.blue,
  textTheme: GoogleFonts.montserratTextTheme(),
);

final darkTheme = ThemeData.dark().copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: GoogleFonts.montserratTextTheme(),
);
