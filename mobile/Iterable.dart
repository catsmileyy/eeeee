void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  Iterable<int> evenNumbers = numbers.where((n) => n.isEven);
  print(evenNumbers);


  List<int> values = [1, 5, 10, 15];
  Iterable<int> doubleValues = values.map((n) => n * 2);
  print(doubleValues);


  List<int> data = [10, 20, 30, 7, 40, 50];
  bool has7 = data.any((n) => n == 7);
  print(has7);
  bool hasNumberGreaterThan100 = data.any((n) => n > 100);
  print(hasNumberGreaterThan100);


  List<String> words = ['apple', 'cat', 'banana', 'dog', 'elephant'];
  Iterable<String> filterList = words.where((n) => n.length >= 5).map((n) => n.toUpperCase());
  print(filterList);
}
