void checkAge(int age) {
  if (age < 10) {
    print("Child");
  }
  else if (age > 10 && age < 18) {
    print("Teenage");
  }
  else {
    print("Adult");
  }
}
void checkNum(int num) {
  if (num < 0) {
    print("$num is less than 0");
  }
  else if (num == 0) {
    print("The number is 0");
  }
  else {
    if (num % 2 == 0) {
      print("$num is greater than 0 and even");
    }
    else {
      print("$num is greater than 0 and odd");
    }
  }
}
void checkDay(int input) {
  switch(input) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("1-7 only");
  }
}
void listNum() {
  for (int i = 1; i < 101; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    }
    else if (i % 3 != 0 && i % 5 == 0) {
      print("Buzz");
    }
    else if (i % 3 == 0 && i % 5 != 0) {
      print("Fizz");
    }
    else {
      print(i);
    }
  }
}
void printPattern1(int n)
{
  for (int i = 1; i <= n; i++) {
    print('*' * i);
  }
}
void printPattern2(int n)
{
  for (int i = 1; i <= n; i++) {
    print('$i' * i);
  }
}
void main()
{
  checkAge(5);
  checkAge(15);
  checkAge(25);
  checkNum(-5);
  checkNum(0);
  checkNum(1);
  checkNum(2);
  checkDay(0);
  checkDay(1);
  checkDay(2);
  checkDay(3);
  checkDay(4);
  checkDay(5);
  checkDay(6);
  checkDay(7);
  listNum();
  printPattern1(4);
  printPattern2(400000);
}