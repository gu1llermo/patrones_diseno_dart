import 'package:patrones_diseno/state/lampara_example/lampara.dart';
import 'package:patrones_diseno/state/semaforo_example/semaforo.dart';
import 'package:patrones_diseno/strategy/procesador_pagos/paypal_payment.dart';
import 'package:patrones_diseno/strategy/procesador_pagos/procesador_pagos.dart';

void main(List<String> arguments) {
  testProcesadorPagos();
}

void testPatronDisenoState(){
final lampara = Lampara();
print(lampara.currentStateDescription);
lampara.presionarBoton();// Intensidad baja
lampara.presionarBoton();// Intensidad alta
lampara.presionarBoton();// Intermitente
lampara.presionarBoton();// apagada

}

void testSemaforo(){
  final semaforo = Semaforo();
  print(semaforo.currentStateDescription);
  semaforo.start();
  Future.delayed(const Duration(seconds: 18), () {
    semaforo.stop();
  },);
}

void testProcesadorPagos(){
  final procesadorPagos = ProcesadorPagos();
  final paypal = PaypalPayment(email: 'correo@gmail.com', password: '1234');
  procesadorPagos.paymentStrategy=paypal;
  procesadorPagos.procesarPago(100);
}
