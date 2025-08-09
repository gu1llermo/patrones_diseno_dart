import 'dart:math';

import 'package:patrones_diseno/factory/simple_factory/forma_geometrica.dart';

class Circulo implements FormaGeometrica{
  final num radio;

  Circulo({required this.radio});

  @override
  num get area => pi*pow(radio, 2) ;

  @override
  void showInfo() {
    print('''
  Círculo
  radio= $radio
  area= ${area.toStringAsFixed(2)}
''') ;
  }
}