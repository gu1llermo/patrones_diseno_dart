import 'package:patrones_diseno/factory/factory_method/automovil_factory.dart';
import 'package:patrones_diseno/factory/factory_method/bicicleta_factory.dart';
import 'package:patrones_diseno/factory/factory_method/camion_factory.dart';
import 'package:patrones_diseno/factory/factory_method/vehiculo.dart';
import 'package:patrones_diseno/factory/factory_method/vehiculo_factory.dart';
import 'package:patrones_diseno/factory/simple_factory/formas_geometrica_factory.dart';
import 'package:patrones_diseno/state/lampara_example/lampara.dart';
import 'package:patrones_diseno/state/semaforo_example/semaforo.dart';
import 'package:patrones_diseno/strategy/procesador_pagos/paypal_payment.dart';
import 'package:patrones_diseno/strategy/procesador_pagos/procesador_pagos.dart';

void main(List<String> arguments) {
  testFactoryMethod();
}

void testPatronDisenoState() {
  final lampara = Lampara();
  print(lampara.currentStateDescription);
  lampara.presionarBoton(); // Intensidad baja
  lampara.presionarBoton(); // Intensidad alta
  lampara.presionarBoton(); // Intermitente
  lampara.presionarBoton(); // apagada
}

void testSemaforo() {
  final semaforo = Semaforo();
  print(semaforo.currentStateDescription);
  semaforo.start();
  Future.delayed(const Duration(seconds: 18), () {
    semaforo.stop();
  });
}

void testProcesadorPagos() {
  final procesadorPagos = ProcesadorPagos();
  final paypal = PaypalPayment(email: 'correo@gmail.com', password: '1234');
  procesadorPagos.paymentStrategy = paypal;
  procesadorPagos.procesarPago(100);
}

void testSimpleFactory() {

  final cuadradoConfig = {'lado': 5.0};
  final cuadrado = FormasGeometricaFactory.createFormaGeometrica(
    FormaGeometricaType.cuadrado,
    cuadradoConfig,
  );
  cuadrado.showInfo();

  final circuloConfig = {'radio': 2.5};
  final circulo = FormasGeometricaFactory.createFormaGeometrica(
    FormaGeometricaType.circulo,
    circuloConfig,
  );
  circulo.showInfo();

  final trianguloConfig = {'base': 5.0, 'altura': 5};
  final triangulo = FormasGeometricaFactory.createFormaGeometrica(
    FormaGeometricaType.triangulo,
    trianguloConfig,
  );
  triangulo.showInfo();
}

void testFactoryMethod(){
  // Ya tengo mis fábricas
  VehiculoFactory bicicletaFactory = BicicletaFactory();
  VehiculoFactory automovilFactory = AutomovilFactory();
  VehiculoFactory camionFactory = CamionFactory();

  // Ahora quiero mis productos
  Vehiculo bicicleta = bicicletaFactory.createVehiculo();
  print(bicicleta.type);

  Vehiculo automovil = automovilFactory.createVehiculo();
  print(automovil.type);

  Vehiculo camion = camionFactory.createVehiculo();
  print(camion.type);
}
