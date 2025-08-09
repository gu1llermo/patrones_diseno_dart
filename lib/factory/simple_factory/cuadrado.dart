import 'dart:math';

import 'package:patrones_diseno/factory/simple_factory/forma_geometrica.dart';

class Cuadrado implements FormaGeometrica{
  final num lado;

  Cuadrado({required this.lado});

  @override
  num get area => pow(lado, 2);

  @override
  void showInfo() {
    print ('''
  Cuadrado
  lado = $lado
  area = ${area.toStringAsFixed(2)}
''');
  }
}