import 'package:patrones_diseno/state/lampara_example/intensidad_alta.dart';
import 'package:patrones_diseno/state/lampara_example/lampara.dart';
import 'package:patrones_diseno/state/lampara_example/lampara_state.dart';

class IntensidadBaja extends LamparaState{
  @override
  String getDescription(Lampara lampara) {
    return 'Intensidad baja';
  }

  @override
  void presionarBoton(Lampara lampara) {
    lampara.setState(IntensidadAlta());
  }
}