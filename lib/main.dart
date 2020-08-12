import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'what\'s your favourite color',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 1},
        {'text': 'white', 'score': 20},
        {'text': 'orenge', 'score': 11},
      ],
    },
    {
      'questionText': ' what\'s your favourite animal',
      'answers': [
        {'text': 'elephant', 'score': 10},
        {'text': 'lion', 'score': 12},
        {'text': 'leaopard', 'score': 13},
        {'text': 'fox', 'score': 14},
      ],
    },
    {
      'questionText': ' who\'s your favourite instructor',
      'answers': [
        {'text': 'emma', 'score': 15},
        {'text': 'anugo', 'score': 16},
        {'text': 'element', 'score': 17},
        {'text': 'oge', 'score': 18},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void ResetQuiz() {

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

    // if (_questionIndex < question.length) {
    //   print('we have more questions!');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My frist app'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                question: _question,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, ResetQuiz),
      ),
    );
  }
}
