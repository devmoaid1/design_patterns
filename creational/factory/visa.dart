import 'credit_card.dart';

class Visa implements CreditCard {
  @override
  void deposit() {
    print('your deposit is done in visa card');
  }

  @override
  void withDraw() {
    print('your process is handled by a visa credit card');
  }
}
