import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário Page"),
      ),
      body: const Padding(padding: EdgeInsets.all(20), child: Center()),
    );
  }
}
