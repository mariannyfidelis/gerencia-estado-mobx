import 'package:mobx/mobx.dart';

class Controller {
  //O mobx trabalha com uma Tríade (Observable - Action - Reaction) que causam efeitos
  var counter = Observable(0);
  late Action increment;

  Controller() {
    increment = Action(_increment);
  }

  _increment() {
    counter.value += 1;
  }
}
