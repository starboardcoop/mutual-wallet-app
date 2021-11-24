import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mutual_wallet/views/transactions_view.dart';
import 'package:mutual_wallet/views/bank_view.dart';
import 'package:mutual_wallet/views/profile_view.dart';

class ViewController extends StatefulWidget {
  const ViewController({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ViewControllerState();
}

class _ViewControllerState extends State<ViewController> {
  int _selectedPage = 0;
  static const List<Widget> _pages = <Widget>[
    TransactionsView(),
    BankView(),
    ProfileView(),
  ];

  void _updatePage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horizontal_circle_outlined),
            activeIcon: Icon(Icons.swap_horizontal_circle),
            label: "Exchange",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_outlined),
            activeIcon: Icon(Icons.account_balance),
            label: "Bank",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: "Me",
          ),
        ],
        currentIndex: _selectedPage,
        onTap: _updatePage,
      ),
      body: _pages.elementAt(_selectedPage),
    );
  }
}
