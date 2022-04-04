import 'package:flutter/material.dart';
import 'package:mutual_wallet/view_controller.dart';

void main() {
  runApp(const MutualCreditApp());
}

class MutualCreditApp extends StatelessWidget {
  const MutualCreditApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mutual Wallet',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.orange,
        ),
      ),
      home: const ViewController(),
    );
  }
}
