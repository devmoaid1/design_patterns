import 'address.dart';
import 'director.dart';
import 'order.dart';
import 'product.dart';
import 'store.dart';

void main(List<String> args) {
  // builder patten is a pattern used for creating complex object that requires many parts and steps to build
  //,also used for seperating object constrcution and presentation
  final Director director = Director();

  final Store store = Store(id: 1, storeName: 'Zara');
  final Address address = Address(id: 1, streetName: 'street1', buildNo: '1');
  final List<Product> products = [
    Product(id: 1, name: 'product 1', price: 120),
    Product(id: 2, name: 'product 2', price: 110),
    Product(id: 3, name: 'product 3', price: 100)
  ];

  Order order = Order();

  director.build(order, store, products,
      address); // we delegete object creation to builder we dont know
  // how its built

  order.getOrder();
}
