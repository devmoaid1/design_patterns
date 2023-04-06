import 'employee.dart';
import 'manager_operator.dart';

class EmployeeManagerAdapter {
  static Employee convertToEmployee(ManagerOperator managerOperator) =>
      Employee(
          baseSalary: managerOperator.baseSalary,
          id: managerOperator.id,
          name: managerOperator.name);
}
