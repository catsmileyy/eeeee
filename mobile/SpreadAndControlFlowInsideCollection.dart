void main() {
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [6, 7, 8, 9, 10];
  List<int> combinedNumbers = [...list1, ...list2];
  print(combinedNumbers);
  

  Set<String> set1 = {'A', 'B', 'C'};
  Set<String> set2 = {'D', 'E', 'F'};
  Set<String> set3 = {'G', 'H', 'I', 'F'};
  Set<String> allUniqueElements = {...set1, ...set2, ...set3};
  print(allUniqueElements);


  List<String> baseList = ['itemA', 'itemB'];
  List<String>? optionalList1 = ['itemC', 'itemD'];
  List<String>? optionalList2 = null;
  List<String> finalList1 = [...baseList, ...?optionalList1];
  List<String> finalList2 = [...baseList, ...?optionalList2];
  print(finalList1);
  print(finalList2);


  bool isLoggedIn = false;
  //bool isLoggedIn = true;
  List<String> shoppingCartList = ['Product List', 'Shopping Cart Icon', if(isLoggedIn) 'Logout Button'];
  print(shoppingCartList);


  List<String> productNames = ['Laptop', 'Mouse', 'Keyboard'];
  List<String> formattedProducts = [for (var product in productNames) 'Product: $product'];
  print(formattedProducts);


  bool isAdmin = true;
  // bool isAdmin = false;
  List<String>? extraFeatures = ['Analytics', 'Reporting'];
  // List<String>? extraFeatures = null;
  List<String> configOptions = ['Core Config', if(isAdmin) 'Admin Panel Access', ...?extraFeatures, 'User Settings'];
  print(configOptions);


  Map<String, List<String>> categories = {
    'Fruits': ['Apple', 'Banana', 'Orange'],
    'Vegetables': ['Carrot', 'Broccoli'],
    'Dairy': ['Milk', 'Cheese'],
  };
  List<String> allFlatItems = [
    for (var entry in categories.entries)
      for (var item in entry.value)
        '${entry.key}: $item'
  ];
  print(allFlatItems);


  List<dynamic> deepList = [1, [2, [3, 4]], 5];
  List<dynamic> flatten(dynamic num) {
    if (num is List) {
      return [for (var i in num) ...flatten(i)];
    } else {
      return [num];
    }
  }
  List<dynamic> flattenedList = flatten(deepList);
  print(flattenedList);
}