import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';
import 'home_page_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nController = TextEditingController();
  TextEditingController sController = TextEditingController();

  var home_controller = HomePageController();

  _textField(String label, Function(String novoNome) onchanged,
      {String Function()? errorText}) {
    return TextField(
      //controller: sController,
      decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
          errorText: errorText == null ? "" : errorText()),
      onChanged: onchanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Controller();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gerência de estado com Mobx"),
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Observer(
                builder: (_) {
                  return _textField("Nome", home_controller.client.changeName);
                },
              ),
              const SizedBox(height: 20),
              Observer(builder: (_) {
                return _textField(
                    "Sobrenome", home_controller.client.changeEmail);
              }),
              const SizedBox(height: 20),
              // Visibility(
              //   visible: false,
              //   child: Observer(
              //     builder: (context) => Text(
              //       '${controller.nomeCompleto}',
              //       style: Theme.of(context).textTheme.headline4,
              //     ),
              //   ),
              // ),
              Observer(builder: (_) {
                return OutlinedButton(
                  onPressed: home_controller.validate ? () {} : () {},
                  child: Text("Salvar"),
                );
              })
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _counter.increment,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
