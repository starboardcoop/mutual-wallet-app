import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mutual_wallet/models/transaction.dart';

class BankView extends StatelessWidget {
  const BankView({Key? key}) : super(key: key);

  final String _address = "bank";

  TextStyle _textStyle() {
    return const TextStyle(
      fontSize: 16,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Transaction> transfers = <Transaction>[
      Transaction(_address, "Me", 250),
      Transaction(_address, "John Smith", 250),
      Transaction(_address, "Jane Smith", 250),
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: transfers.length,
        itemBuilder: (_, i) {
          return Card(
            child: Container(
              child: Row(
                children: [
                  transfers[i].sender == _address
                      ? const Icon(Icons.north_east, color: Colors.orange)
                      : const Icon(Icons.south_west, color: Colors.white),
                  const Spacer(flex: 1),
                  Text(
                    transfers[i].sender == _address
                        ? transfers[i].recipient
                        : transfers[i].sender,
                    style: _textStyle(),
                  ),
                  const Spacer(flex: 10),
                  Text(
                    NumberFormat.currency(symbol: "\$ ")
                        .format(transfers[i].amount),
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
    );
  }
}
