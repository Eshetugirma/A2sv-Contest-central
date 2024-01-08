import "package:flutter/material.dart";

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Color(0xff454264),
    primary: Color(0xff282540),
    secondary: Color(0xff454264),
    onPrimary: Colors.white,
    tertiary: Color(0xff666666CE),
  ),
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Color(0xffF6F6F9),
    primary: Colors.white,
    onPrimary: Color.fromARGB(255, 31, 31, 31),
    onSecondary: Color(0xff979797),
    secondary: Colors.white,
    tertiary: Color.fromARGB(255, 231, 230, 230),
  ),
);
