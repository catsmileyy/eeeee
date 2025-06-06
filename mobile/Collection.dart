int sumList(List<int> list) {
  int sum = 0;
  for (int num in list) {
    sum += num;
  }
  return sum;
}

List<int> reverseList(List<int> list) {
  List<int> reversed = [];
  for (int i = list.length - 1; i >= 0; i--) {
    reversed.add(list[i]);
  }
  return reversed;
}
bool checkCountry(Set<String> countries, String name) {
  return countries.contains(name);
}


void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  numbers.add(60);
  print('Third element: ${numbers[2]}');
  print('Sum: ${sumList(numbers)}');
  List<int> reversed = reverseList(numbers);
  print('Reversed list: $reversed');
  Set<String> countries = {'A', 'B', 'C', 'D', 'E', 'F'};
  countries.add('A');
  print(countries);
  print(checkCountry(countries, 'A'));
  print(checkCountry(countries, 'G'));
  Map<String, String> phoneBook = {
    'DogSon': '0969696969',
    'Dog': '0169696969',
    'C': '0269696969'
  };
  print(phoneBook);
  print(phoneBook['DogSon']);
  phoneBook['DogSon'] = '6969696969';
  phoneBook.remove('C');
  print(phoneBook);
}
