import 'address.dart';
import 'order_builder.dart';
import 'product.dart';
import 'store.dart';

class Director {
  OrderBuilder? builder;

  Director({this.builder});

  void build(OrderBuilder builder, Store store, List<Product> products,
      Address address) {
    this.builder = builder;
    builder
      ..addProducts(products)
      ..setAddress(address)
      ..setStore(store);
  }
}
