import 'package:flutter/material.dart';

class Themes {
  static ThemeData themeDefault = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    cardTheme: CardTheme(
      color: Colors.blue,
      elevation: 8,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
      fontSize: 20,
    )),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      elevation: 8,
      shadowColor: Colors.black,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        backgroundColor: MaterialStatePropertyAll(Colors.blue[200]),
        foregroundColor: MaterialStatePropertyAll(Colors.blue[900]),
        textStyle: const MaterialStatePropertyAll(
          TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(),
      filled: true,
      fillColor: Colors.white,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 120, 193, 253),
          width: 2,
        ),
      ),
      labelStyle: TextStyle(
        color: Colors.blue[900],
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blue,
          width: 2,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blue[200],
      foregroundColor: Colors.blue[900],
      shape: const CircleBorder(),
    ),
    useMaterial3: true,
  );
}
