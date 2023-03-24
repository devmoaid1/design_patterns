import 'singeleton.dart';

void main(List<String> args) {
  Cart cart1 = Cart.getInstance();
  Cart cart2 = Cart.getInstance();

  cart1.addToCart();
  cart1.addToCart();
  cart2.addToCart();

  print('cart 1 count: ${cart1.cartCount}');
  print('cart 2 count: ${cart2.cartCount}');

  cart1.addToCart();
  cart2.addToCart();

  print('cart 1 count: ${cart1.cartCount}');
  print('cart 2 count: ${cart2.cartCount}');
}
