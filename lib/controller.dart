import 'package:mobx/mobx.dart';

class Controller {
  //O mobx trabalha com uma Tríade (Observable - Action - Reaction) que causam efeitos
  final _counter = Observable(0);
  late Action increment;

  Controller() {
    increment = Action(_increment);
  }

  int get counter => _counter.value;

  set counter(int value) {
    _counter.value = value;
  }

  _increment() {
    counter += 1;
  }
}
