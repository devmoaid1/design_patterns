import 'credit_card.dart';
import 'credit_card_factory.dart';
import 'master.dart';
import 'visa.dart';

class BankFactory implements CreditCardFactory {
  @override
  CreditCard getCreditCard(String cardNumber) {
    final prefix = cardNumber.substring(0, 5);
    switch (prefix) {
      case '12345':
        return Master();
      case '55555':
        return Visa();

      default:
        throw Exception('unSupported card');
    }
  }
}
