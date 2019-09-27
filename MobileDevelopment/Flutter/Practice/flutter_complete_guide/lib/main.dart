import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/AnswerButtonWiget.dart';
import './questionWidget.dart';
import './result.dart';
import './Quiz.dart';

void main() => runApp(MyQuizApp());

class MyQuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyQuizAppState();
  }
}

class MyQuizAppState extends State<MyQuizApp> {
  final _questionSet = const [
    {
      'question': 'Capital of India ?',
      'solution': [
        {'text': 'Mumbai', 'score': -2},
        {'text': 'Chennai', 'score': -2},
        {'text': 'New Delhi', 'score': 2},
        {'text': 'Hyderabad', 'score': -2},
      ],
    },
    {
      'question': 'PM Of India ?',
      'solution': [
        {'text': 'Jagan', 'score': -2},
        {'text': 'Modi', 'score': 2},
        {'text': 'Amit Shah', 'score': -2},
      ],
    },
    {
      'question': 'UNO HeadQuarters',
      'solution': [
        {'text': 'Geneva', 'score': 2},
        {'text': 'NewYork', 'score': -2},
        {'text': 'LasVegas', 'score': -2},
        {'text': 'Mumbai', 'score': -2},
      ],
    },
    {
      'question': 'Article 370A valid for Which State in India?',
      'solution': [
        {'text': 'J&K', 'score': 2},
        {'text': 'Andhra Pradesh', 'score': -2},
        {'text': 'Maharastra', 'score': -2},
        {'text': 'Gujarat', 'score': -2},
        {'text': 'Arunachal Pradesh', 'score': -2},
      ],
    },
  ];

  int questionIndex = 0;
  var totalScore = 0;

  void selectedAnswer(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });

    if (questionIndex >= _questionSet.length) {
      print("We have NO More Questionss....");
      // questionIndex = 0;
    }

    print("Answer Selected : $questionIndex");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyQuizApp"),
        ),
        body: (questionIndex < _questionSet.length)
            ? Quiz(
                questionSet: _questionSet,
                questionIndex: questionIndex,
                selectedAnswer: selectedAnswer)
            : Result(totalScore),
      ),
    );
  }
}
