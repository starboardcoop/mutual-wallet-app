import 'package:flutter/material.dart';
import 'package:mutual_wallet/models/exchange.dart';

class ExchangeFormController {
  final person = TextEditingController();
  final amount = TextEditingController();
  final memo = TextEditingController();

  Exchange get exchange => Exchange(person.text, amount.text, memo.text);
}
