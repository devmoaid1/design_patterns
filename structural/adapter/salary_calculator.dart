import 'employee.dart';

class SalaryCalculator {
  double calcSalary(Employee employee) {
    if (employee.baseSalary != null) {
      return (employee.baseSalary)! * 1.8;
    } else {
      throw 'salary isn`t availble';
    }
  }
}
