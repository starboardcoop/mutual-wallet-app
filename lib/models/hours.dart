import 'package:intl/intl.dart';

class Hours {
  final double _hours;

  Hours(this._hours);

  @override
  String toString() {
    return NumberFormat.currency(name: "Hours", symbol: "HR ").format(_hours);
  }
}
