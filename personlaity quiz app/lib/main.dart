import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex =
      0; // classwide variable called property not placed inside build as we need it to be classwide and also not get rebuilt everytime build is executed

  final _questions = const [
    {
      'questionText': 'What\'s your favorite colour ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 100}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': [
        {'text': 'Rat', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 3},
        {'text': 'Bat', 'score': 11}
      ],
    },
    {
      'questionText': 'What\'s your favorite Intructor ?',
      'answers': [
        {'text': 'Luke', 'score': 1},
        {'text': 'Hailey', 'score': 1},
        {'text': 'Manny', 'score': 1},
        {'text': 'Alex', 'score': 1}
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

  Void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questons!');
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //widget here is a class , context is a variable buildcontext is type

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore,
                _resetQuiz), //<widget> here tells dart that '[]' next to it will store a list of widgets
      ),
    );
  }
}
