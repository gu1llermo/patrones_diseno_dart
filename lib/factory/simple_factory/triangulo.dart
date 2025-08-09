import 'package:patrones_diseno/factory/simple_factory/forma_geometrica.dart';

class Triangulo implements FormaGeometrica{
  final num base;
  final num altura;

  Triangulo({required this.base, required this.altura});

  @override
  num get area => base*altura/2;

  @override
  void showInfo() {
    print ('''
  Triangulo
  base= $base
  altura= $altura
  area= ${area.toStringAsFixed(2)}
''');
  }
}