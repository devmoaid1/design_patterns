import 'employee_manager_adapter.dart';
import 'manager_operator.dart';
import 'salary_calculator.dart';

void main(List<String> args) {
  // adapter pattern is a pattern that interact to incompatible interfaces together

  ManagerOperator operator = ManagerOperator(
      baseSalary: 1000, name: 'Mohamed', id: 12, sector: 'Maintenance');
  SalaryCalculator salaryCalculator = SalaryCalculator();
  final adaptedManager = EmployeeManagerAdapter.convertToEmployee(
      operator); // using adapter for converting
  final salary = salaryCalculator.calcSalary(adaptedManager);
  print('salary is : $salary');
}
