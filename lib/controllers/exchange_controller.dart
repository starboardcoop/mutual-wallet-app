import 'package:mutual_wallet/models/exchange.dart';
import 'package:mutual_wallet/models/user.dart';

class ExchangeController {
  void send(Exchange exchange) {
    print("SEND ${exchange.person} ${exchange.amount} ${exchange.memo}");

    User.debit(exchange.amount);
  }

  void request(Exchange exchange) {
    print("REQUEST ${exchange.person} ${exchange.amount} ${exchange.memo}");
  }
}
