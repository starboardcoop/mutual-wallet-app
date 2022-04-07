import 'package:flutter/material.dart';
import 'package:mutual_wallet/controllers/exchange.dart';
import 'package:mutual_wallet/hours_formatter.dart';
import 'package:mutual_wallet/models/exchange_model.dart';
import 'package:mutual_wallet/screens/new_exchange_screen.dart';
import 'package:mutual_wallet/widgets/exchange_button.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  TextStyle _textStyle() {
    return const TextStyle(
      fontSize: 16,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<ExchangeModel>(
          builder: (context, model, child) {
            return ListView.builder(
              itemCount: model.exchanges.length,
              itemBuilder: (_, i) {
                return Card(
                  child: Container(
                    child: Row(
                      children: [
                        model.exchanges[i].type == ExchangeType.send
                            ? const Icon(Icons.north_east, color: Colors.orange)
                            : const Icon(Icons.south_west, color: Colors.white),
                        const Spacer(flex: 1),
                        Text(
                          model.exchanges[i].name,
                          style: _textStyle(),
                        ),
                        const Spacer(flex: 10),
                        Text(
                          HoursFormatter.format(model.exchanges[i].amount),
                          style: _textStyle(),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(12),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                );
              },
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
