import 'order_handler.dart';

void main(List<String> args) {
  // facade pattern hides system complexity from client using system and acts as interface for client
  final orderHandler = OrderHandler();

  orderHandler.createOrder();
}
