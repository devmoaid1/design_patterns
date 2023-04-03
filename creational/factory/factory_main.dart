import 'dart:io';

import 'bank_factory.dart';
import 'credit_card.dart';
import 'credit_card_factory.dart';

void main(List<String> args) {
  // factory pattern is used to seperate object creation from client code to interface that decides which subclass to return
  // using this patterns leads to more readability , ease of maintainence, and extending functionality

  print('Enter your Card number: ');

  String? cardNumber = stdin.readLineSync();

  if (cardNumber != null) {
    CreditCardFactory factory = BankFactory();
    CreditCard card = factory.getCreditCard(cardNumber);
    card.withDraw();
  }
}
