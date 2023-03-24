class Cart {
  int _cartCount = 0;

  int get cartCount => _cartCount;

  static Cart? _instance;

  Cart._() {} // private constructor to prevent creating new objects outside class

  void addToCart() => _cartCount++;

  static Cart getInstance() {
    if (_instance == null) {
      _instance = Cart._(); // for lazy intialization
    }
    return _instance!;
  }
}
