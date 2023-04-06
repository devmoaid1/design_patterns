import 'dart:math';

import 'bascket_item.dart';
import 'invoice_processor.dart';
import 'payment_processor.dart';
import 'shopping_bascket.dart';

class OrderHandler {
  // facade class that simplify complexity of system and work as interface for client

  late ShoppingBascket _shoppingBascket;
  late PaymentProcessor _paymentProcessor;
  late InvoiceProccessor _invoiceProccessor;

  OrderHandler() {
    // intialize all dependencies
    _shoppingBascket = ShoppingBascket();
    _paymentProcessor = PaymentProcessor();
    _invoiceProccessor = InvoiceProccessor();
  }

  void _initBascket() {
    _shoppingBascket
        .addToBascket(BascketItem(name: 'Pepsi', price: 10, quantity: 5));
    _shoppingBascket
        .addToBascket(BascketItem(name: 'Tide', price: 45, quantity: 5));
  }

  void _handleInvoice(List<BascketItem> bascketItems) {
    _invoiceProccessor.generateInvoice(bascketItems);
  }

  void _handlePayment() {
    _paymentProcessor.handlePayment(Random().nextInt(100));
  }

  void createOrder() {
    _initBascket();
    _handleInvoice(_shoppingBascket.bascketItem);
    _handlePayment();

    print('order created successfully and being processed');
  }
}
