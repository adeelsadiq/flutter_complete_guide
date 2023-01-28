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
      'answers': ['Red', 'Blue', 'Green', 'Purple'],
    },
    {
      'questionText': '1: Whats your fav Actor?',
      'answers': ['Angie', 'Brad', 'Colin', 'Javier'],
    },
    {
      'questionText': '1: Whats your fav Animal?',
      'answers': ['Dog', 'Cat', 'Bear', 'Rhino'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
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
              : Result()),
    );
  }
}
