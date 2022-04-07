import 'package:flutter/material.dart';

class ThemeFactory {
  static ThemeData get() {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.orange,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.orange,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.orange,
      ),
    );
  }
}
