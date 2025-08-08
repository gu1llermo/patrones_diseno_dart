import 'payment_strategy.dart';

class ProcesadorPagos {
  PaymentStrategy? _paymentStrategy;

  String get currentPaymentMethod => _paymentStrategy?.paymentMethod ?? 'None';
  num calculateTotalCost(num amount) {
    if (_paymentStrategy == null) return amount;
    return _paymentStrategy!.calculateFees(amount)+amount;
  }


  set paymentStrategy(PaymentStrategy strategy){
    _paymentStrategy = strategy;
    print('Método de pago seleccionado: ${_paymentStrategy?.paymentMethod}');
  }

  bool procesarPago(num amount){
    if (_paymentStrategy == null) {
      print('Error: Método de pago no seleccionado');
      return false;
    }
   final result = _paymentStrategy!.procesarPago(amount);
    return result;
  }



}