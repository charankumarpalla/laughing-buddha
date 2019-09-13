import 'package:flutter/material.dart';

class QuestionsWidget extends StatelessWidget {
  final String question;

  QuestionsWidget(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(40),
      child: Text(
        question,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
