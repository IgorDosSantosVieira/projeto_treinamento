import 'package:flutter/material.dart';
import 'package:treino_tela/step/step_form.dart';

void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Step App",
      home: StepForm(),
    );
  }
}
