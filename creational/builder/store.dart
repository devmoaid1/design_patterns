class Store {
  final int id;
  final String storeName;

  Store({required this.id, required this.storeName});

  @override
  String toString() {
    return 'Store { id: $id, storeName: $storeName }';
  }
}
