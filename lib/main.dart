import 'package:flutter/material.dart';
import './question.dart';
import "./answer.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
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

    print('Answer chosen');
  }

  @override // Make code clear. We are overriding build method.
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What are you doing right now?',
        'answers': [
          'Learning Flutter',
          'Learning React Native',
          'React Native is the best btw',
          'Flutter isn\'t bad either'
        ],
        'correctAnswer': 'Learning Flutter'
      },
      {
        'questionText': 'What are you doing right now?',
        'answers': [
          'Learning Flutter',
          'Learning React Native',
          'React Native is the best btw',
          'Flutter isn\'t bad either'
        ],
        'correctAnswer': 'Learning Flutter'
      },
      {
        'questionText': 'What are you doing right yesterday?',
        'answers': [
          'Giving Exams',
          'Learning React Native',
          'React Native is the best btw',
          'Flutter isn\'t bad either'
        ],
        'correctAnswer': 'Giving Exams'
      },
      {
        'questionText': 'What are you doing tomorrow?',
        'answers': [
          'Learning Flutter again',
          'Learning React Native',
          'React Native is the best btw',
          'Flutter isn\'t bad either'
        ],
        'correctAnswer': 'Learning Flutter again'
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pathasala'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
           ...(questions[_questionIndex]['answers'] as List<String>).map((answer)  {
             return Answer(_answerQuestion,answer);
           }).toList()
          ],
        ),
      ),
    );
  }
}
