import 'package:patrones_diseno/factory/factory_method/camion.dart';
import 'package:patrones_diseno/factory/factory_method/vehiculo.dart';
import 'package:patrones_diseno/factory/factory_method/vehiculo_factory.dart';

class CamionFactory extends VehiculoFactory{
  @override
  Vehiculo createVehiculo() {
    return Camion();
  }
}