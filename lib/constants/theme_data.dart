import 'package:flutter/material.dart';

class MyThemeData {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 1,
    ),
    colorScheme: const ColorScheme.light(
      surface: Color.fromARGB(
        26,
        13,
        108,
        247,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade800,
      foregroundColor: Colors.white,
      elevation: 1,
    ),
    colorScheme: const ColorScheme.dark(
      surface: Color.fromARGB(
        26,
        13,
        108,
        247,
      ),
    ),
  );
}
