import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/AnswerButtonWiget.dart';
import './questionWidget.dart';

void main() => runApp(MyQuizApp());

class MyQuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyQuizAppState();
  }
}

class MyQuizAppState extends State<MyQuizApp> {
  final _questionSet = [
    {
      'question': 'Capital of India ?',
      'solution': ['Mumbai', 'New Delhi', 'Hyderabad', 'Chennai'],
    },
    {
      'question': 'PM Of India ?',
      'solution': ['jagan', 'Modi', 'AmitShah'],
    },
    {
      'question': 'UNO HeadQuarters',
      'solution': ['Geneva', 'New Delhi', 'LosVegas', 'NewYork'],
    },
    {
      'question': 'Article 370A valid for Which State in India?',
      'solution': ['Kashmir', 'AndhraPradesh', 'TamilNadu', 'ArunchalPradesh'],
    },
  ];

  int questionIndex = 0;

  void selectedAnswer() {
    setState(() {
      questionIndex += 1;
    });

    if (questionIndex >= _questionSet.length) {
      questionIndex = 0;
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
          body: Column(
            children: <Widget>[
              QuestionWidget(_questionSet[questionIndex]['question']),
              ...(_questionSet[questionIndex]['solution'] as List<String>)
                  .map((answer) {
                return AnswerButtonWiget(answer, selectedAnswer);
              }).toList(),
              // AnswerButtonWiget("answer", selectedAnswer),
            ],
          )),
    );
  }
}
