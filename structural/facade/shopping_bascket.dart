import 'bascket_item.dart';

class ShoppingBascket {
  List<BascketItem>? _bascketItems;

  List<BascketItem> get bascketItem => _bascketItems ?? [];

  ShoppingBascket() {
    // intialize list
    _bascketItems = [];
  }

  void addToBascket(BascketItem item) {
    _bascketItems!.add(item);
  }

  void removeItem(BascketItem item) {
    _bascketItems!.remove(item);
  }
}
