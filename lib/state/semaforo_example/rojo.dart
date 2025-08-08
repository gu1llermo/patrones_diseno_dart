import 'package:patrones_diseno/state/semaforo_example/semaforo.dart';
import 'package:patrones_diseno/state/semaforo_example/semaforo_state.dart';
import 'package:patrones_diseno/state/semaforo_example/verde.dart';

class Rojo extends SemaforoState {
  @override
  String getCurrentDescription(Semaforo semaforo) {
    return 'Rojo';
  }

  @override
  void nextState(Semaforo semaforo) {
   semaforo.setState(Verde());
    Future.delayed(const Duration(seconds: 3), () {
      semaforo.nextState();
    },);
  }
  
  @override
  void start(Semaforo semaforo) {
     return;
  }

}