import 'package:patrones_diseno/state/semaforo_example/detenido.dart';
import 'package:patrones_diseno/state/semaforo_example/semaforo_state.dart';


class Semaforo {
  SemaforoState _currentState;
  Semaforo() : _currentState= Detenido();

  String get currentStateDescription => _currentState.getCurrentDescription(this);

  void start(){
    _currentState.start(this);
  }
  void setState(SemaforoState state){
    _currentState = state;
    print('Semáforo cambiando a : $currentStateDescription');
  }
  void nextState(){
    _currentState.nextState(this);
  }
  void stop(){
    _currentState=Detenido();
  }
}