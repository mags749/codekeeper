import 'package:codekeeper/utils/hex_color.dart';
import 'package:flutter/material.dart';

var darkTextStyle = TextStyle(color: HexColor('#FAFAFA'));
var lightTextStyle = TextStyle(color: HexColor('#000000'));

ThemeData darkTheme = ThemeData(
    accentColor: HexColor('#222438'),
    appBarTheme: AppBarTheme(elevation: 0),
    backgroundColor: HexColor('#222539'),
    brightness: Brightness.light,
    primaryColor: HexColor('#222438'),
    scaffoldBackgroundColor: HexColor("#222539"),
    textTheme: TextTheme(
        bodyText1: darkTextStyle,
        bodyText2: darkTextStyle,
        button: darkTextStyle,
        caption: darkTextStyle));

ThemeData lightTheme = ThemeData(
    accentColor: HexColor('#FFFFFF'),
    appBarTheme: AppBarTheme(elevation: 0.0),
    backgroundColor: HexColor('#FFFFFF'),
    brightness: Brightness.dark,
    primaryColor: HexColor("#FAFAFA"),
    scaffoldBackgroundColor: HexColor('#FFFFFF'),
    textTheme: TextTheme(
        bodyText1: lightTextStyle,
        bodyText2: lightTextStyle,
        button: lightTextStyle,
        caption: lightTextStyle,
        overline: lightTextStyle,
        headline1: lightTextStyle));
