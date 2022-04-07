class User {
  static String name = "Dillon";
  static double balance = 205;

  static void debit(double amount) {
    balance -= amount;
  }
}
