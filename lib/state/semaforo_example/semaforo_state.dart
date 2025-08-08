import 'package:patrones_diseno/state/semaforo_example/semaforo.dart';

abstract class SemaforoState {
  String getCurrentDescription(Semaforo semaforo);
  void nextState(Semaforo semaforo);
  void start(Semaforo semaforo);
}