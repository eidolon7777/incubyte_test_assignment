class StringCalculator {
  
  // int add(String numbers) {
  //   if (numbers.isEmpty) {
  //     return 0;
  //   }
  //   List<String> numberList = numbers.split(RegExp(r'\D+')).where((element) => element.isNotEmpty).toList();
  //   print(numberList);
  //   if (numberList.isNotEmpty) {
  //     throw Exception("negatives not allowed: ${numberList.join(', ')}");
  //   }
  //   return numberList.map((element) => int.parse(element)).fold(0,(value, element) => value + element);
  // }

  int add(String input) {
    if (input.isEmpty) {
      return 0;
    }
  final reg = RegExp(r'-?\d+');

  int sum = 0;
  final negatives = <String>[];

  for (final match in reg.allMatches(input)) {
    final value = int.parse(match.group(0) ?? '0');

    if (value < 0) {
      negatives.add(value.toString());
    } else {
      sum += value;
    }
  }

  if (negatives.isNotEmpty) {
    throw Exception(
      'negative numbers not allowed ${negatives.join(',')}',
    );
  }

  return sum;
}


}