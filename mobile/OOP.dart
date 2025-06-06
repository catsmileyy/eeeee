import 'dart:math';

class BankAccount {
  double balance = 0.0;
  BankAccount([double initialBalance = 0.0]) {
    if (initialBalance >= 0) {
      balance = initialBalance;
    }
  }
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
    } else {
      print('Deposit amount must be positive.');
    }
  }
  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
    } else {
      print('Invalid withdrawal amount.');
    }
  }
  double get getBalance => balance;
}

class Animal {
  void makeSound() {

  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Son");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow");
  }
}

abstract class Shape {
  double area();
}

class Circle implements Shape {
  double r;
  Circle(this.r);
  @override
  double area() {
    return pi * r * r;
  }
}

class Rectangle implements Shape {
  double a;
  double b;
  Rectangle(this.a, this.b);
  @override
  double area() {
    return a * b;
  }
}

mixin Flyable {
  void fly() {
    print("Fly");
  }
}

mixin Swimmable {
  void swim() {
    print("Swim");
  }
}

class SuperRobot with Flyable, Swimmable {
  void selfDestruct() {
    print("Die");
  }
  void customMode() {
    fly();
    swim();
    selfDestruct();
  }
}

abstract class Payment {
  double amount;
  Payment(this.amount);

  void pay();
}

abstract class Refundable {
  void refund();
}

mixin Logger {
  void logMessage(String message) {
    print(message);
  }
}


class CreditCardPayment extends Payment with Logger implements Refundable {
  String cardNumber;

  CreditCardPayment(this.cardNumber, double amount) : super(amount);

  @override
  void pay() {
    logMessage('\$$amount was paid using card $cardNumber');
  }

  @override
  void refund() {
    logMessage('\$$amount was refunded to card $cardNumber');
  }
}

class CashPayment extends Payment {
  CashPayment(double amount) : super(amount);

  @override
  void pay() {
    print('\$$amount was paid using cash');
  }
}

void processPayment(Payment p) {
  p.pay();

}

void main() {
  var account = BankAccount(100.0);
  account.deposit(50.0);
  account.withdraw(30.0);
  print('Current balance: \$${account.getBalance}');
  account.withdraw(130.0);
  print('Current balance: \$${account.getBalance}');
  Animal dog = Dog();
  Animal cat = Cat();
  dog.makeSound();
  cat.makeSound();
  Shape circle = Circle(69);
  Shape rectangle = Rectangle(69, 96);
  print(circle.area());
  print(rectangle.area());
  SuperRobot noobRobot = SuperRobot();
  noobRobot.customMode();
  Payment credit = CreditCardPayment('1234-5678-9012-3456', 150.0);
  Payment cash = CashPayment(75.0);
  processPayment(credit);
  print('---');
  processPayment(cash);
}
