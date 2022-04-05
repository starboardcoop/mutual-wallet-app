import 'package:flutter/material.dart';
import 'package:mutual_wallet/models/user.dart';
import 'package:mutual_wallet/screens/home_screen.dart';
import 'package:mutual_wallet/theme_factory.dart';
import 'package:mutual_wallet/widgets/main_app_bar.dart';

void main() {
  runApp(const MutualCreditApp());
}

class MutualCreditApp extends StatelessWidget {
  const MutualCreditApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = User("Dillon");

    return MaterialApp(
      title: 'Mutual Wallet',
      theme: ThemeFactory.get(),
      home: Scaffold(
        appBar: MainAppBar(user),
        body: const HomeScreen(),
      ),
    );
  }
}
