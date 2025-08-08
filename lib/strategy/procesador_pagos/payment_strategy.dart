abstract class PaymentStrategy {
  String get paymentMethod;
  bool procesarPago(num amount);
  num calculateFees(num amount);
}