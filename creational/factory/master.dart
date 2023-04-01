import 'credit_card.dart';

class Master implements CreditCard {
  @override
  void deposit() {
    print('your deposit is done in master card');
  }

  @override
  void withDraw() {
    print('your process is handled by a master credit card');
  }
}
