

import 'package:patrones_diseno/state/lampara_example/lampara.dart';

abstract class LamparaState{
  String getDescription(Lampara lampara);
  void presionarBoton(Lampara lampara);
}