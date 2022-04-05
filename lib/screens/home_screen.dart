import 'package:flutter/material.dart';
import 'package:mutual_wallet/models/hours.dart';
import 'package:mutual_wallet/models/transaction.dart';
import 'package:mutual_wallet/screens/new_exchange_screen.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
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
                      Hours(transactions[i].amount).toString(),
                      style: _textStyle(),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(12),
              ),
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
            );
          },
        ),
      ),
      floatingActionButton: ExchangeButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const NewExchangeScreen();
          }),
        );
      }),
    );
  }
}
