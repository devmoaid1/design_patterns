import 'dart:math';

import 'bascket_item.dart';

class InvoiceProccessor {
  int _subTotal = 0;
  int _discount = 0;
  int _netTotal = 0;

  void generateInvoice(List<BascketItem> items) {
    for (final item in items) {
      if (item.quantity! > 4) {
        _discount += 10;
      }
      _subTotal += item.price!;
    }

    _netTotal = _subTotal - _discount;

    print(
        "invoice details \n*************\ninvoice id: ${Random().nextInt(100)} \nsubTotal : $_subTotal \nnetTotal:$_netTotal");
  }
}
