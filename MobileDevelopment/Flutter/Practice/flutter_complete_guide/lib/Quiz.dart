import 'package:flutter/material.dart';

import './questionWidget.dart';
import './AnswerButtonWiget.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionSet;
  final int questionIndex;
  final Function selectedAnswer;
  Quiz(
      {@required this.questionSet,
      @required this.questionIndex,
      @required this.selectedAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        QuestionWidget(questionSet[questionIndex]['question']),
        ...(questionSet[questionIndex]['solution'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerButtonWiget(
              answer['text'], () => selectedAnswer(answer['score']));
        }).toList(),
        // AnswerButtonWiget("answer", selectedAnswer),
      ],
    );
  }
}
