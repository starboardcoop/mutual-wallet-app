import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mutual_wallet/models/transaction.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({Key? key}) : super(key: key);

  final String _address = "1234";

  TextStyle _textStyle() {
    return const TextStyle(
      fontSize: 16,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Transaction> transactions = <Transaction>[
      Transaction(_address, "John Smith", 70),
      Transaction("Jane Smith", _address, 25)
    ];

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.swap_horiz,
          size: 32,
        ),
      ),
    );
  }
}
