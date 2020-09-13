import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

void main() {
  runApp(
      MyApp()); // runApp faz com que o nosso app seja executado, ele espera o Widget principal como parâmetro
}

// ? Ctrl + Shift + R

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;

  void _ansWerQuestion() {
    setState(() {
      _questionsIndex++;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionsIndex]),
            Answer(_ansWerQuestion),
            Answer(_ansWerQuestion),
            Answer(_ansWerQuestion),
          ],
        ),
      ),
    );
  }
}

/*
Todo widget é uma classe que possui o método build
 build() -> faz algumas configs para transforma a sua combinação de widgets em um aplicativo real
 Scaffold cria um design base
 AppBar() é um widget do material.dart
 RaisedButton -> botão com efeito de foco
 BuildContext tem haver com a posição na arvore de widgets
 */
/*
? Widget com estado:
É necessário a implementação de 2 classe para criar um widget com estado.
A primeira classe dever representar o widget com estado, a mesma deve estender da classe StatefulWidget.
Já a segunda deve estender da classe State<ClasseStateFul> que deve receber como parâmetro (Generics) a classe que está estendendo de StatefulWidget.

Setstate é uma função que recebe outra função.
*/

// * _ O underline define que a classe só pode ser usado dentro do aqrquivo aonde a mesma esta sendo declarada (private)
