// Aquí centralizamos la lógica de creación de los productos
import 'package:patrones_diseno/factory/simple_factory/circulo.dart';
import 'package:patrones_diseno/factory/simple_factory/cuadrado.dart';
import 'package:patrones_diseno/factory/simple_factory/forma_geometrica.dart';
import 'package:patrones_diseno/factory/simple_factory/triangulo.dart';

enum FormaGeometricaType{circulo, cuadrado, triangulo}

class FormasGeometricaFactory {
static FormaGeometrica createFormaGeometrica(FormaGeometricaType type, Map<String, Object>? config){
 config ??= {};
 return switch (type) {
   FormaGeometricaType.circulo => _createCirculo(config),
   FormaGeometricaType.cuadrado => _createCuadrado(config),
   FormaGeometricaType.triangulo => _createTriangulo(config)
 };
}
  static FormaGeometrica _createCirculo(Map<String, Object> config){
    final radio = config['radio'] as num? ?? 1.0;
    return Circulo(radio: radio);
  }
  static FormaGeometrica _createCuadrado(Map<String, Object> config){
    final lado = config['lado'] as num? ?? 1.0;
    return Cuadrado(lado: lado);
  }
  static FormaGeometrica _createTriangulo(Map<String, Object> config){
    final base = config['base'] as num? ?? 1.0;
    final altura = config['altura'] as num? ?? 1.0;
    return Triangulo(base: base, altura: altura);
  }
}