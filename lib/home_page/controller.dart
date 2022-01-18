import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @computed
  String get nomeCompleto => nome + ' ' + sobrenome;
  @action
  void mudarNome(String novoNome) {
    nome = novoNome;
  }

  @action
  void mudarSobrenome(String novoSobrenome) {
    sobrenome = novoSobrenome;
  }
}
