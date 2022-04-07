import 'package:mutual_wallet/models/exchange.dart';

class ExchangeController {
  void send(Exchange exchange) {
    print("SEND ${exchange.person} ${exchange.amount} ${exchange.memo}");
  }

  void request(Exchange exchange) {
    print("REQUEST ${exchange.person} ${exchange.amount} ${exchange.memo}");
  }
}
