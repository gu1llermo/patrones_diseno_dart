import 'package:patrones_diseno/state/lampara_example/intermitente.dart';
import 'package:patrones_diseno/state/lampara_example/lampara.dart';
import 'package:patrones_diseno/state/lampara_example/lampara_state.dart';

class IntensidadAlta extends LamparaState{
  @override
  String getDescription(Lampara lampara) {
    return 'Intensidad alta';
  }

  @override
  void presionarBoton(Lampara lampara) {
    lampara.setState(Intermitente());
  }
}