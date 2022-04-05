import 'package:intl/intl.dart';

class HoursFormatter {
  static String format(double hours) {
    return NumberFormat.currency(symbol: "HR ").format(hours);
  }
}
