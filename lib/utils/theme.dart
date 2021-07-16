import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  accentColor: Color(0xffD83F89),
  appBarTheme: AppBarTheme(elevation: 0.0),
  backgroundColor: Color(0xff022140),
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Color(0xff080F5B),
);

ThemeData lightTheme = ThemeData(
  accentColor: Color(0xff06d755),
  appBarTheme: AppBarTheme(elevation: 0),
  backgroundColor: Color(0xff78ab8a),
  brightness: Brightness.light,
  primaryColor: Color(0xfffffffF),
  scaffoldBackgroundColor: Color(0xff78ab8a),
);
