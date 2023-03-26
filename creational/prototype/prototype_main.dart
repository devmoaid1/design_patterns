import 'car.dart';
import 'model.dart';

void main() {
  Car car1 = Car(model: Model(number: '2', year: '2023'), name: 'Toyota');

  Car car2 = car1.deepCopy();

  print('car 1 original value ${car1.toString()}');
  print('car 2 original  value ${car2.toString()}');

  car2.model!.year = '2003';
  print('************************************************');
  print('car 1 after copy  ${car1.toString()}');
  print('car 2 after copy  ${car2.toString()}');
}
