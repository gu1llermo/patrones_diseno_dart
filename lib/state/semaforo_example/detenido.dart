import 'package:patrones_diseno/state/semaforo_example/semaforo.dart';
import 'package:patrones_diseno/state/semaforo_example/semaforo_state.dart';
import 'package:patrones_diseno/state/semaforo_example/verde.dart';

class Detenido extends SemaforoState{
  @override
  String getCurrentDescription(Semaforo semaforo) {
    return 'Detenido';
  }

  @override
  void nextState(Semaforo semaforo) {
    return;
  }
  
  @override
  void start(Semaforo semaforo) {
    semaforo.setState(Verde());
    Future.delayed(const Duration(seconds: 3), () {
      semaforo.nextState();
    },);
  }
}