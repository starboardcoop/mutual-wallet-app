import 'package:flutter/material.dart';
import 'package:mutual_wallet/models/exchange_model.dart';
import 'package:mutual_wallet/models/user_model.dart';
import 'package:provider/provider.dart';

import 'exchange.dart';

class ExchangeController {
  void send(BuildContext context, Exchange exchange) {
    print("SEND ${exchange.name} ${exchange.amount} ${exchange.memo}");

    var user = Provider.of<UserModel>(context, listen: false);
    user.debit(exchange.amount);

    var exchangeModel = Provider.of<ExchangeModel>(context, listen: false);
    exchangeModel.add(exchange);
  }

  void request(BuildContext context, Exchange exchange) {
    print("REQUEST ${exchange.name} ${exchange.amount} ${exchange.memo}");

    var user = Provider.of<UserModel>(context, listen: false);
    user.credit(exchange.amount);

    var exchangeModel = Provider.of<ExchangeModel>(context, listen: false);
    exchangeModel.add(exchange);
  }
}
