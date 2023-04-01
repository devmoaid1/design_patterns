import 'credit_card.dart';

abstract class CreditCardFactory {
  CreditCard getCreditCard(String cardNumber);
}
