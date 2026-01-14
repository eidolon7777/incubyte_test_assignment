import 'package:test/test.dart';
import 'package:incubyte_test_assesment/string_calculator.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  test('add returns 0 for empty string', () {
    expect(calculator.add(""), 0);
  });

  test('add returns number for single number string', () {
    expect(calculator.add("1"), 1);
  });

}