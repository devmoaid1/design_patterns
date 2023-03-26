import 'copyable.dart';
import 'model.dart';

class Car implements Copyable<Car> {
  final String? name;
  final Model? model;

  Car({this.name, this.model});

  @override
  Car deepCopy({String? name, Model? model}) {
    // new copy with same data but new refrence
    return Car(name: name ?? this.name, model: model ?? this.model!.deepCopy());
  }

  @override
  Car shallowCopy() {
    Car copy = Car();
    // new object
    copy = this; // shallow copy with reference to original copy
    return copy;
  }

  @override
  String toString() {
    return "name: ${this.name}\n  model: \n number:${model!.number} \n year: ${model!.year}";
  }
}
