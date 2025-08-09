import 'package:patrones_diseno/factory/factory_method/bicicleta.dart';
import 'package:patrones_diseno/factory/factory_method/vehiculo.dart';
import 'package:patrones_diseno/factory/factory_method/vehiculo_factory.dart';

class BicicletaFactory extends VehiculoFactory{
  @override
  Vehiculo createVehiculo() {
    return Bicicleta();
  }
}