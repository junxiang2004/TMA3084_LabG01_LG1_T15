
import 'dart:io';
import 'myLib.dart';

void main() {
  print("Please enter your basic salary:");
  int salary = int.parse(stdin.readLineSync()!);

  print("Please enter your overtime hours:");
  int hours = int.parse(stdin.readLineSync()!);

  Employee emp = Employee(salary, hours);

  print("Basic Salary: RM $salary");
  print("Overtime Hours: $hours");
  print("Total Payment: RM ${emp.totalPayment()}");
}
