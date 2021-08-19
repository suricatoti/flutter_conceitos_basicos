import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'Qual a sua cor preferida?',
      'answers': ['Preta', 'Vermelha', 'Verde', 'Branca'],
    },
    {
      'questionText': 'Qual o seu animal favorito?',
      'answers': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'questionText': 'Aonde você gostaria de viver?',
      'answers': ['Canada', 'França', 'EUA', 'Itália'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('Não há mais perguntas!');
    } else {
      print('Não há mais perguntas!');
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Primeiro aplicativo'),
        ),
        body: _questionIndex < questions.length
            ? Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        )
            : Center(
          child: Text('Você conseguiu!'),
        ),
      ),
    );
  }
}
