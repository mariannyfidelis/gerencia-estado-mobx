import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerência de Estado com MobX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Gerência de Estado com MobX'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  late String title;
  MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  TextEditingController nController = TextEditingController();
  TextEditingController sController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = Controller();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                //controller: nController,
                decoration: const InputDecoration(labelText: "Nome"),
                onChanged: controller.mudarNome,
              ),
              const SizedBox(height: 20),
              TextField(
                //controller: sController,
                decoration: const InputDecoration(labelText: "Sobrenome"),
                onChanged: controller.mudarSobrenome,
              ),
              const SizedBox(height: 20),
              Visibility(
                visible: true,
                child: Observer(
                  builder: (context) => Text(
                    '${controller.nomeCompleto}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
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
