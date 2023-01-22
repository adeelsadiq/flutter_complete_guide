import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite food?',
      'What\'s your favourite animal? ',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First APP'),
          ),
          body: Column(
            children: <Widget>[],
          )),
    );
  }
}
