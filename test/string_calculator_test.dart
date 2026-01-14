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

  test('add returns sum for multiple number string', () {
    expect(calculator.add("1,2,3"), 6);
  });

  test('add returns sum for multiple number string with new line', () {
    expect(calculator.add("1 \n 2 \n3"), 6);
  });

    test('add returns sum for multiple number string with new line and comma', () {
    expect(calculator.add("1 \n 2 \n3,4"), 10);
  });

  test('add returns sum for multiple number string with custom delimiter', () {
    expect(calculator.add("//;\n1;2"), 3);
  });
}