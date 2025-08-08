import 'package:patrones_diseno/state/semaforo_example/semaforo.dart';
import 'package:patrones_diseno/state/semaforo_example/semaforo_state.dart';

import 'amarillo.dart';

class Verde extends SemaforoState {
  @override
  String getCurrentDescription(Semaforo semaforo) {
    return 'Verde';
  }

  @override
  void nextState(Semaforo semaforo) {
    semaforo.setState(Amarillo());
    Future.delayed(const Duration(seconds: 3), () {
      semaforo.nextState();
    },);
  }
  
  @override
  void start(Semaforo semaforo) {
    return;
  }

}