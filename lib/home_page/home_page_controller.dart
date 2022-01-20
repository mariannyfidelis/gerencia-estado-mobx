import 'package:mobx/mobx.dart';
import '../models/client.dart';
part 'home_page_controller.g.dart';

class HomePageController = _HomePageControllerBase with _$HomePageController;

abstract class _HomePageControllerBase with Store {
  var client = Client();
}
