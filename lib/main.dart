import 'package:flutter/material.dart';
import './question.dart';
import './Answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
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
    final question = [
      {
        'questionText': 'what\'s your favourite color',
        'answers': ['black', 'red', 'green', 'white'],
      },
      {
        'questionText': ' what\'s your favourite animal',
        'answers': ['lion', 'elephant', 'fox', 'leopard'],
      },
      {
        'questionText': ' who\'s your favourite instructor',
        'answers': ['max', 'emma', 'nonso', 'ebube'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My frist app'),
        ),
        body: Column(
          children: [
            Question(
              question[_questionIndex]['questionText'],
            ),

            ...(question[_questionIndex]['answers'] as List<String>).map((answers) {
              return Answer(_answerQuestion, answers);
            }).toList()
          ],
        ),
      ),
    );
  }
}
