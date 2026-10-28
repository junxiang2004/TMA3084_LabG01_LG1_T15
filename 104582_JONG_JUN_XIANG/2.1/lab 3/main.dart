import 'dart:io';

import 'mylib.dart';

void main() {
  int total = 0;
  Employee worker = Employee();

  print('Please enter your basic payment:');
  worker.basicpay = int.parse(stdin.readLineSync()!);

  print('Please enter your overtime hours:');
  worker.ot = int.parse(stdin.readLineSync()!);

  int otpay = worker.ot * worker.ottime;

  total = otpay + worker.basicpay;

  print('Basic Salary: RM ${worker.basicpay}');
  print('Overtime Hours: ${worker.ot}');
  print('The total salry for u will be :${total}');
}
