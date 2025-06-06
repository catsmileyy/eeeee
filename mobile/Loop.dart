void main() {
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  for (var fruit in fruits) {
    print(fruit);
  }

  List<int> numbers = [5, 10, 15, 20];
  int total = 0;
  for (var n in numbers) {
    total += n;
  }
  print(total);

  Set<int> values = {10, 20, 30, 40};
  bool exists = false;
  for (var v in values) {
    if (v == 30) {
      exists = true;
      break;
    }
  }
  print(exists);

  Map<String, int> ages = {'Alice': 25, 'Bob': 30, 'Charlie': 22};
  for (var entry in ages.entries) {
    print('${entry.key}: ${entry.value}');
  }

  List<int> nums1 = [3, 8, 2, 10, 5];
  int max = nums1[0];
  for (var n in nums1) {
    if (n > max) {
      max = n;
    }
  }
  print(max);

  List<int> nums2 = [1, 2, 3, 4, 5, 6];
  for (var n in nums2) {
    if (n % 2 == 0) {
      print(n);
    }
  }

  List<String> names = ['john', 'doe', 'smith'];
  List<String> upperNames = [];
  for (var name in names) {
    upperNames.add(name.toUpperCase());
  }
  print(upperNames);

  Map<String, int> scores = {'Alice': 75, 'Bob': 82, 'Charlie': 91};
  for (var entry in scores.entries) {
    if (entry.value >= 80) {
      print('${entry.key}: ${entry.value}');
    }
  }

  List<String> items = ['apple', 'banana', 'apple', 'orange', 'banana', 'apple'];
  Map<String, int> freq = {};
  for (var item in items) {
    freq[item] = (freq[item] ?? 0) + 1;
  }
  print(freq);

  List<List<int>> matrix = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];
  List<int> flat = [];
  for (var row in matrix) {
    for (var item in row) {
      flat.add(item);
    }
  }
  print(flat);
}
