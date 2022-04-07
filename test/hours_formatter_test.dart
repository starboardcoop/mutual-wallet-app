import 'package:flutter_test/flutter_test.dart';
import 'package:mutual_wallet/hours_formatter.dart';

void main() {
  test("Formats integer to hours currency notation", () {
    expect(HoursFormatter.format(6), equals("HR 6.00"));
  });
}
