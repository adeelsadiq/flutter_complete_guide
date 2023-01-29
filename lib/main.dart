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
      'questionText': '1: Whats your fav color?',
      'answers': [
        {'text': 'Green', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Blue', 'score': 9},
        {'text': 'Purple', 'score': 7}
      ],
    },
    {
      'questionText': '1: Whats your fav Actor?',
      'answers': [
        {'text': 'Angie', 'score': 10},
        {'text': 'Brad', 'score': 8},
        {'text': 'Ben', 'score': 4},
        {'text': 'Colin', 'score': 7},
      ],
    },
    {
      'questionText': '1: Whats your fav Animal?',
      'answers': [
        {'text': 'Dog', 'score': 8},
        {'text': 'Cat', 'score': 10},
        {'text': 'Bear', 'score': 2},
        {'text': 'Panda', 'score': 2}
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
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First APP'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
