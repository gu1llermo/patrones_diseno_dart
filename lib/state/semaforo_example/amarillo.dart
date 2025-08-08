import 'package:patrones_diseno/state/semaforo_example/rojo.dart';
import 'package:patrones_diseno/state/semaforo_example/semaforo.dart';
import 'package:patrones_diseno/state/semaforo_example/semaforo_state.dart';

class Amarillo extends SemaforoState{
  @override
  String getCurrentDescription(Semaforo semaforo) {
    return 'Amarillo';
  }

  @override
  void nextState(Semaforo semaforo) {
    semaforo.setState(Rojo());
    Future.delayed(const Duration(seconds: 3), () {
      semaforo.nextState();
    },);
  }
  
  @override
  void start(Semaforo semaforo) {
    return;
  }
}