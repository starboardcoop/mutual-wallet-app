import 'package:mutual_wallet/models/exchange.dart';
import 'package:mutual_wallet/models/user_model.dart';

class ExchangeController {
  void send(UserModel user, Exchange exchange) {
    print("SEND ${exchange.person} ${exchange.amount} ${exchange.memo}");

    user.debit(exchange.amount);
  }

  void request(UserModel user, Exchange exchange) {
    print("REQUEST ${exchange.person} ${exchange.amount} ${exchange.memo}");

    user.credit(exchange.amount);
  }
}
