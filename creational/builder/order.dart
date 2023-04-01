import 'address.dart';
import 'order_builder.dart';
import 'product.dart';
import 'store.dart';

class Order implements OrderBuilder {
  DateTime? orderDate;
  Address? address;
  Store? store;
  List<Product>? products;

  Order({this.orderDate, this.address, this.store, this.products});

  @override
  void addProducts(List<Product> products) {
    this.products = products;
  }

  @override
  Order getOrder() {
    print(
        'Order details: \n **********\n order date: ${DateTime.now()} \n address : ${address.toString()} \n store : ${store.toString()}\n  order products: \n');
    for (final product in products!) {
      print(product.toString());
    }
    return Order(
        orderDate: DateTime.now(),
        address: this.address,
        store: this.store,
        products: this.products);
  }

  @override
  void setAddress(Address address) {
    this.address = address;
  }

  @override
  void setStore(Store store) {
    this.store = store;
  }
}
