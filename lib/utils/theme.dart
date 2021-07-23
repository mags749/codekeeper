import 'package:codekeeper/utils/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var darkTextStyle = TextStyle(color: HexColor('#EEEEEE'));
var lightTextStyle = TextStyle(color: HexColor('#222831'));

ThemeData darkTheme = ThemeData(
    accentColor: HexColor('#4ECCA3'),
    appBarTheme: AppBarTheme(elevation: 0),
    backgroundColor: HexColor('#EEEEEE').withOpacity(0.1),
    brightness: Brightness.dark,
    primaryColor: HexColor('#222831'),
    scaffoldBackgroundColor: HexColor("#222831"),
    fontFamily: GoogleFonts.play().fontFamily,
    textTheme: TextTheme(
      bodyText1: darkTextStyle,
      bodyText2: darkTextStyle,
      button: darkTextStyle,
      caption: darkTextStyle,
      headline4: darkTextStyle,
    ));

ThemeData lightTheme = ThemeData(
    accentColor: HexColor('#30E3CA'),
    appBarTheme: AppBarTheme(elevation: 0.0),
    backgroundColor: HexColor('#222831').withOpacity(0.05),
    brightness: Brightness.light,
    primaryColor: HexColor("#FFFFFF"),
    scaffoldBackgroundColor: HexColor('#FFFFFF'),
    fontFamily: GoogleFonts.play().fontFamily,
    textTheme: TextTheme(
      bodyText1: lightTextStyle,
      bodyText2: lightTextStyle,
      button: lightTextStyle,
      caption: lightTextStyle,
      overline: lightTextStyle,
      headline4: lightTextStyle,
    ));
