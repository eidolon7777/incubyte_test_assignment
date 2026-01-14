class StringCalculator {
  
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    List<String> numberList = numbers.split(RegExp(r'\D+')).where((element) => element.isNotEmpty).toList();
    return numberList.map((element) => int.parse(element)).fold(0,(value, element) => value + element);
  }

}