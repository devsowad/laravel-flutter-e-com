import 'package:flutter/material.dart';

const defaultPadding = 16.0;
const defaultAnimationDuration = Duration(milliseconds: 200);

class DefaultFontSize {
  static const double xSmall = 12;
  static const double small = 15;
  static const double base = 18;
  static const double medium = 20;
  static const double large = 25;
  static const double xLarge = 30;
}

class DefaultGapSize {
  static const double xSmall = 5;
  static const double small = 16;
  static const double medium = 32;
  static const double large = 48;
}

BoxShadow defaultBoxShadow() {
  return BoxShadow(
    offset: const Offset(0, 6),
    blurRadius: 10,
    color: const Color(0xFFB0B0B0).withOpacity(0.6),
  );
}
