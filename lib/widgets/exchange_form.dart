import 'package:flutter/material.dart';
import 'package:mutual_wallet/controllers/exchange_form_controller.dart';

class ExchangeForm extends StatelessWidget {
  const ExchangeForm({Key? key, required ExchangeFormController controller})
      : _controller = controller,
        super(key: key);

  final ExchangeFormController _controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            controller: _controller.person,
            decoration: const InputDecoration(labelText: "Person"),
          ),
          TextFormField(
            controller: _controller.amount,
            decoration: const InputDecoration(labelText: "Amount"),
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            controller: _controller.memo,
            decoration: const InputDecoration(labelText: "Memo"),
          ),
        ],
      ),
    );
  }
}
