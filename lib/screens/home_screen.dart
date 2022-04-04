import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mutual_wallet/models/transaction.dart';
import 'package:mutual_wallet/widgets/exchange_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String _address = "1234";

  TextStyle _textStyle() {
    return const TextStyle(
      fontSize: 16,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Transaction> transactions = Transaction.all().toList();

    return Scaffold(
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (_, i) {
          return Card(
            child: Container(
              child: Row(
                children: [
                  transactions[i].sender == _address
                      ? const Icon(Icons.north_east, color: Colors.orange)
                      : const Icon(Icons.south_west, color: Colors.white),
                  const Spacer(flex: 1),
                  Text(
                    transactions[i].sender == _address
                        ? transactions[i].recipient
                        : transactions[i].sender,
                    style: _textStyle(),
                  ),
                  const Spacer(flex: 10),
                  Text(
                    NumberFormat.currency(symbol: "\$ ")
                        .format(transactions[i].amount),
                    style: _textStyle(),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(12),
            ),
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
          );
        },
        padding: const EdgeInsets.all(16),
      ),
      floatingActionButton: ExchangeButton(onPressed: () {}),
    );
  }
}
