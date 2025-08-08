import 'package:patrones_diseno/state/lampara_example/apagada.dart';
import 'package:patrones_diseno/state/lampara_example/lampara.dart';
import 'package:patrones_diseno/state/lampara_example/lampara_state.dart';

class Intermitente extends LamparaState{
  @override
  String getDescription(Lampara lampara) {
    return 'Lámpara intermitente';
  }

  @override
  void presionarBoton(Lampara lampara) {
    lampara.setState(Apagada());
  }
}