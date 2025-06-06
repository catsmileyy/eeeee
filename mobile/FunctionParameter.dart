double calculateVolume(double length, double width, double height) {
  return length * width * height;
}
void greetUser(String name, {String title = "Guest"}) {
  print("Hello, $title $name!");
}
void createProfile(String username, {String bio = "no bio", int? age}) {
  print("Username: $username, Bio: $bio, Age: ${age ?? ''}");
}
void order(String itemName, {int? quantity, String? note}) {
  if (quantity == null && note == null) {
    print("Item name: $itemName");
  }
  else if(quantity != null && note == null) {
    print("Item name: $itemName, Quantity: $quantity");
  }
  else if(quantity == null && note != null) {
    print("Item name: $itemName, Note: $note");
  }
  else
  {
    print("Item name: $itemName, Quantity: $quantity, Note: $note");
  }
}
double add(double a, double b) => a + b;
double subtract(double a, double b) => a - b;
double applyMath(double a, double b, double Function(double, double) operation) {
  return operation(a, b);
}
void main() {
  double length = 8;
  double width = 5;
  double height =   2;
  double volume = calculateVolume(length, width, height);
  print('The volume of the box is $volume');
  greetUser("A", title: "Mr.");
  greetUser("B"); 
  createProfile("C");
  createProfile("D", bio:"noob");
  createProfile("E", bio: "pro", age: 69);
  createProfile("F", age: 42);
  order("Laptop");
  order("Mouse", quantity: 2);
  order("Keyboard", note: "Mechanical");
  order("Monitor", quantity: 1, note: "27-inch");
  print(applyMath(10, 5, add)); 
  print(applyMath(10, 5, subtract));
}
