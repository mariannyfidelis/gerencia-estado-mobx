import 'package:mobx/mobx.dart';
import '../models/client.dart';
part 'home_page_controller.g.dart';

class HomePageController = _HomePageControllerBase with _$HomePageController;

abstract class _HomePageControllerBase with Store {
  var client = Client();

  @computed
  bool get validate {
    return validaNome() == null && validaEmail() == null;
  }

  @action
  String? validaNome() {
    if (client.name.isEmpty || client.name == null) {
      return "Campo obrigatório";
    } else if (client.name.length <= 4) {
      return "Deve ter mais de 4 caracteres";
    }
    return null;
  }

  @action
  String? validaEmail() {
    if (client.email.isEmpty || client.email == null) {
      return "Campo obrigatório";
    } else if (!client.email.contains("@")) {
      return "Email inválido";
    }
    return null;
  }
}
