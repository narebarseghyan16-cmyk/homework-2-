void main() {
  double amount = 1000;

  List<Payment> payments = [
    CardPayment(),
    CashPayment(),
    CryptoPayment(),
  ];

  for (Payment payment in payments) {
    print('${payment.runtimeType}: ${calculateTotal(payment, amount)}');
  }
}

abstract class Payment {
  double calculateFee(double amount);
}

class CardPayment extends Payment {
  @override
  double calculateFee(double amount) => amount * 0.02;
}

class CashPayment extends Payment {
  @override
  double calculateFee(double amount) => 0;
}

class CryptoPayment extends Payment {
  @override
  double calculateFee(double amount) => amount * 0.05;
}

double calculateTotal(Payment payment, double amount) {
  return amount + payment.calculateFee(amount);
}



