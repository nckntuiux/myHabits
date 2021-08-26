import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xff2F80ED);

final ThemeData themeData = new ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  accentColor: Colors.blueAccent,
  backgroundColor: Colors.white,
  primaryColorBrightness: Brightness.dark,
  accentColorBrightness: Brightness.dark,
  textTheme: textThemeData,
  iconTheme: IconThemeData(color: Colors.black),
);

final textThemeData = new TextTheme(
  button: GoogleFonts.karla(color: primaryColor, fontWeight: FontWeight.w600, fontSize: 16),
  headline1: GoogleFonts.rubik(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w800, letterSpacing: 1.25),
  headline2: GoogleFonts.karla(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
  headline3: GoogleFonts.karla(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
  bodyText1: GoogleFonts.karla(color: Colors.black, fontSize: 16),
  bodyText2: GoogleFonts.karla(color: Colors.black, fontSize: 14),
);