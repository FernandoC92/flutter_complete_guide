import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
// * garante que o container tenha o máximo de tamanho possível
// * margin: EdgeInsets.all(10), -> A partir do EdgeInsets podemos definir o valor da margem do nosso widget
// * Em dart podemos criar varios construtores com configuraçoes diferentes para a mesma classe
