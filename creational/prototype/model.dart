import 'copyable.dart';

class Model implements Copyable<Model> {
  late String? number;
  late String? year;

  Model({this.number = '1', this.year = '2023'})
      : assert(number != null && year != null, 'name and year cannot be null');

  @override
  Model deepCopy({String? number, String? year}) {
    return Model(number: number ?? this.number, year: year ?? this.year);
  }

  @override
  Model shallowCopy() {
    Model copy = Model();
    copy = this;
    return copy;
  }
}
