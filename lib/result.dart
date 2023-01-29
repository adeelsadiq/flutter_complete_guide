import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restHandler;

  Result(this.resultScore, this.restHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 30) {
      resultText = 'you are awesome';
    } else if (resultScore >= 25) {
      resultText = 'you are ok';
    } else if (resultScore >= 15) {
      resultText = 'you are meh';
    } else {
      resultText = 'whatever';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 187, 107, 107)),
            ),
            child: Text('Restart Quiz'),
            onPressed: restHandler,
          ),
        ],
      ),
    );
  }
}
