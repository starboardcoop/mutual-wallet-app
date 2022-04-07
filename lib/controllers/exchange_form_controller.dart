import 'package:flutter/material.dart';

import 'exchange.dart';

class ExchangeFormController {
  final person = TextEditingController();
  final amount = TextEditingController();
  final memo = TextEditingController();

  Exchange get send_exchange => Exchange(
      ExchangeType.send, person.text, double.parse(amount.text), memo.text);

  Exchange get request_exchange => Exchange(
      ExchangeType.request, person.text, double.parse(amount.text), memo.text);
}
