import 'package:flutter/material.dart';
import 'package:mutual_wallet/models/user.dart';
import 'package:mutual_wallet/screens/home_screen.dart';
import 'package:mutual_wallet/widgets/main_app_bar.dart';

class ViewController extends StatefulWidget {
  const ViewController({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ViewControllerState();
}

class _ViewControllerState extends State<ViewController> {
  @override
  Widget build(BuildContext context) {
    var user = User("Dillon");

    return Scaffold(
      appBar: MainAppBar(user),
      body: const HomeScreen(),
    );
  }
}
