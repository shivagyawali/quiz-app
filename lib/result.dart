import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore < 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'You are strange';
    } else if (resultScore <= 16) {
      resultText = 'You are likeable';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: resetHandler,
            child: Text('Restart Quiz', style: TextStyle(fontSize: 25.0)),
          )
        ],
      ),
    );
  }
}
