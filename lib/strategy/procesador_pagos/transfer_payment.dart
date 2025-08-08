import 'package:patrones_diseno/strategy/procesador_pagos/payment_strategy.dart';

class TransferPayment implements PaymentStrategy{
  final String nroCuenta;
  final String nombre;

  TransferPayment({required this.nroCuenta, required this.nombre});

  @override
  num calculateFees(num amount) {
    return 0;
  }

  @override
  String get paymentMethod => 'Transfer Payment';

  @override
  bool procesarPago(num amount) {
    print('Procesando Transferencia Bancaria...');
    print('Cuenta nro: $nroCuenta');
    print('Tranferencia exitosa: ${amount.toStringAsFixed(2)}');
    return true;
  }
}