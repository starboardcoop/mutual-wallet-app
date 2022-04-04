import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mutual_wallet/screens/home_screen.dart';

class ViewController extends StatefulWidget {
  const ViewController({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ViewControllerState();
}

class _ViewControllerState extends State<ViewController> {
  PreferredSizeWidget _getAppBar() {
    return AppBar(
      title: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: Image.asset("assets/images/profile.jpg").image,
              ),
              boxShadow: const [BoxShadow()],
            ),
          ),
          const Spacer(flex: 1),
          const Text(
            "Dillon",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(flex: 10),
          Text(
            NumberFormat.currency(symbol: "\$ ").format(205),
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
