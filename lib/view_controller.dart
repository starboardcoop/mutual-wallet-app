import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mutual_wallet/models/user.dart';
import 'package:mutual_wallet/screens/home_screen.dart';

class ViewController extends StatefulWidget {
  const ViewController({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ViewControllerState();
}

class _ViewControllerState extends State<ViewController> {
  PreferredSizeWidget _getAppBar() {
    var user = User("Dillon");

    return AppBar(
      title: Row(
        children: [
          Text(
            user.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(flex: 10),
          Text(
            NumberFormat.currency(name: "Hours", symbol: "HR ")
                .format(user.balance),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: const HomeScreen(),
    );
  }
}
