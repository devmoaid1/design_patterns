class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});

  @override
  String toString() {
    return 'Product { id: $id, name: $name, price: $price }';
  }
}
