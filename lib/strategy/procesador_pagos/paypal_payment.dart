import 'package:patrones_diseno/strategy/procesador_pagos/payment_strategy.dart';

class PaypalPayment implements PaymentStrategy{
  final String email;
  final String password;

  PaypalPayment({required this.email, required this.password});

  @override
  num calculateFees(num amount) {
    return 0.1*amount;
  }

  @override
  String get paymentMethod => 'Paypal';

  @override
  bool procesarPago(num amount) {
   print('Procesando el pago con Paypal...');
   print('Cuenta: $email');
   final fees = calculateFees(amount);
   final total = amount + fees;
   print('Pago Paypal exitoso: ${total.toStringAsFixed(2)}');
   print('Comisión: ${fees.toStringAsFixed(2)}');
    return true;
  }
}