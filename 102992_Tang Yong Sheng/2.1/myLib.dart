
class Employee {
  int salary;
  int hours;

  Employee(this.salary, this.hours);

  int totalPayment() {
    int rate = 10;

    return salary + (hours * rate);
  }
}
