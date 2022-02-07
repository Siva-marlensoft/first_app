import 'package:first_app/question.dart';
import 'package:flutter/material.dart';
import "package:first_app/answer.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answerText': ['Red', 'Blue', 'Green', 'Yellow']
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answerText': ['Briyani', 'Dosa', 'Idly', 'Pizza']
      },
      {
        'questionText': 'What\'s your favorite car?',
        'answerText': ['Buggati', 'Ferrari', 'Audi', 'BMW']
      },
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My First Flutter App"),
            ),
            body: Column(
              children: [
                Question(questions[_questionIndex]['questionText']) ,
                ...(questions[_questionIndex]['answerText'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion,answer);
                }).toList()
              ],
            )));
  }
}
