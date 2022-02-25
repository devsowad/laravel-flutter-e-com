import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData themeData() {
  return ThemeData(
    primaryColor: mainColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: mainColor,
          secondary: yellowColor,
        ),
  );
}
