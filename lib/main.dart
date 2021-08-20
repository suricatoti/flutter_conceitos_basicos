import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Qual a sua cor preferida?',
      'answers': [
        {'text': 'Preta', 'score': 10},
        {'text': 'Vermelha', 'score': 5},
        {'text': 'Verde', 'score': 3},
        {'text': 'Branca', 'score': 1},
      ],
    },
    {
      'questionText': 'Qual o seu animal preferido?',
      'answers': [
        {'text': 'Coelho', 'score': 3},
        {'text': 'Cobra', 'score': 11},
        {'text': 'Elefante', 'score': 5},
        {'text': 'Leão', 'score': 9},
      ],
    },
    {
      'questionText': 'Aonde você gostaria de morar?',
      'answers': [
        {'text': 'Canada', 'score': 5},
        {'text': 'EUA', 'score': 9},
        {'text': 'Finalândia', 'score': 7},
        {'text': 'Suécia', 'score': 12},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('Não temos mais perguntas!');
    } else {
      print('Não temos mais perguntas!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu primeiro aplicativo'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
