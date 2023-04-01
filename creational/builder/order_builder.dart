import 'address.dart';
import 'order.dart';
import 'product.dart';
import 'store.dart';

abstract class OrderBuilder {
  void setAddress(Address address);
  void setStore(Store store);
  void addProducts(List<Product> products);
  Order getOrder();
}
