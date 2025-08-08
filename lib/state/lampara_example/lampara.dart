import 'package:patrones_diseno/state/lampara_example/apagada.dart';
import 'package:patrones_diseno/state/lampara_example/lampara_state.dart';

class Lampara{
  LamparaState _currentState;
  Lampara():
    _currentState = Apagada();
    

  void presionarBoton() => _currentState.presionarBoton(this);

  void setState(LamparaState state) { 
    _currentState=state;
    print('Estado cambiado a: ${_currentState.getDescription(this)}');
    }

    String get currentStateDescription => _currentState.getDescription(this);

}