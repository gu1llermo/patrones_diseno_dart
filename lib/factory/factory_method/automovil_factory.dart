import 'package:patrones_diseno/factory/factory_method/automovil.dart';
import 'package:patrones_diseno/factory/factory_method/vehiculo.dart';
import 'package:patrones_diseno/factory/factory_method/vehiculo_factory.dart';

class AutomovilFactory extends VehiculoFactory{
  @override
  Vehiculo createVehiculo() {
    return Automovil();
  }
}