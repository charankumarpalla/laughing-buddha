import 'package:flutter/material.dart';
import './question.dart';
import './answerButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionSet = [
    {
      'Questions': 'Capital of India ?',
      'Answers': ['Bombay', 'New Delhi', 'Chennai', 'Amaravathi']
    },
    {
      'Questions': 'PM of India',
      'Answers': ['Jagan', 'Modi', 'KCR', 'Amit Shah']
    },
    {
      'Questions': 'UNO HeadQuarters',
      'Answers': ['Geneva', 'NewYork', 'LosVegas', 'Paris']
    },
  ];

  var _questionIndex = 0;
  void answerButtonAction() {
    setState(() {
      _questionIndex += 1;
    });

    print("Clicked $_questionIndex");

    if (_questionIndex >= _questionSet.length) {
      _questionIndex = 0;
    }
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
            QuestionsWidget(_questionSet[_questionIndex]['Questions']),
            ...(_questionSet[_questionIndex]['Answers'] as List<String>)
                .map((answer) {
              return AnswerButtonWidget(answerButtonAction, answer);
            }).toList(),

            // AnswerButtonWidget(answerButtonAction),
          ],
        ),
      ),
    );
  }
}
