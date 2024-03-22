import 'dart:io';

void main(List<String> args) {
  print('First number:');
  double n1 = double.parse(stdin.readLineSync()!);
  print('Second number:');
  double n2 = double.parse(stdin.readLineSync()!);
  print(
      'Select operator:\n1 for Addition\n2 for Subtraction\n3 for Multiplication\n4 for Division');
  int op = int.parse(stdin.readLineSync()!);
  if (op == 1) {
    print('$n1 + $n2 = ${add(n1, n2)}\n');
  } else if (op == 2) {
    print('$n1 - $n2 = ${sub(n1, n2)}\n');
  } else if (op == 3) {
    print('$n1 * $n2 = ${mult(num2: n1, num1: n2)}\n');
  } else if (op == 4) {
    if (n2 == 0)
      print('$n1 could not by divided by 0 ');
    else {
      String div = divi(n1, n2).toStringAsFixed(2);
      print('$n1 / $n2 = $div \n');
    }
  }
}

//Optional Positional Parameter
double add(num1, num2, [num3]) {
  double sum = 0;
  sum = num1 + num2;
  if (num3 != null) {
    sum += num3;
  }
  return sum;
}

double sub(num1, num2) {
  return num1 - num2;
}

//Optional Named Parameter
double mult({num2, num1}) {
  return num1 * num2;
}

//Optional Parameter with Default Value
double divi(num1, num2, [num3 = 1]) {
  double division;
  division = num1 / num2;
  return division;
}
