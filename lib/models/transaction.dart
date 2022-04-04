class Transaction {
  String sender;
  String recipient;
  double amount;

  Transaction(this.sender, this.recipient, this.amount);

  static Iterable<Transaction> all() {
    return [
      Transaction("1234", "John Smith", 70),
      Transaction("Jane Smith", "1234", 25),
    ];
  }
}
