import '../../creational/prototype/copyable.dart';

class Employee implements Copyable<Employee> {
  final int? id;
  final String? name;
  final double? baseSalary;

  Employee({this.id, this.name, this.baseSalary});

  @override
  Employee deepCopy({int? id, String? name, double? baseSalary}) => Employee(
      baseSalary: baseSalary ?? this.baseSalary,
      id: id ?? this.id,
      name: name ?? this.name);

  @override
  Employee shallowCopy() {
    Employee copy = Employee();
    copy = this;
    return copy;
  }
}
