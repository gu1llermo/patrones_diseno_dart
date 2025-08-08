import 'package:patrones_diseno/state/lampara_example/intensidad_baja.dart';
import 'package:patrones_diseno/state/lampara_example/lampara.dart';
import 'package:patrones_diseno/state/lampara_example/lampara_state.dart';

class Apagada extends LamparaState {
  @override
  String getDescription(Lampara lampara) {
    return 'Lampara apagada';
  }

  @override
  void presionarBoton(Lampara lampara) {
    lampara.setState(IntensidadBaja());
  }

}