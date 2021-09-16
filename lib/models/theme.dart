import 'package:flutter/material.dart';

class ThemeChanger {
  ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.red,
    primaryColor: Colors.grey.shade900,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
  );

  ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.white54,
    primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.black)),
  );
}
