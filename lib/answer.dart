import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text('Answer1'),
        onPressed: selectHandler,
      ),
    );
  }
}

// * Um atributo estatico pode ser acessado sem a necessidade de instânciar a classe
// * Function -> estou dizendo que essa propriedade contém um ponteiro para uma funçao que será decladrada no widget pai
