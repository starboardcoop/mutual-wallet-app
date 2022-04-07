import 'package:flutter/material.dart';
import 'package:mutual_wallet/controllers/exchange_controller.dart';
import 'package:mutual_wallet/controllers/exchange_form_controller.dart';
import 'package:mutual_wallet/widgets/exchange_form.dart';

class NewExchangeScreen extends StatefulWidget {
  const NewExchangeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NewExchangeScreenState();
  }
}

class _NewExchangeScreenState extends State<NewExchangeScreen> {
  final _controller = ExchangeController();
  final _formController = ExchangeFormController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exchange"),
        leading: TextButton(
          onPressed: () {},
          child: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExchangeForm(controller: _formController),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            heroTag: null,
            onPressed: send,
            label: const Text("SEND"),
            icon: const Icon(Icons.north_east),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            heroTag: null,
            onPressed: request,
            label: const Text("REQUEST"),
            icon: const Icon(Icons.south_west),
            backgroundColor: Colors.orange,
            foregroundColor: Colors.black,
          ),
        ],
      ),
    );
  }

  void send() => _controller.send(_formController.exchange);

  void request() => _controller.request(_formController.exchange);
}
