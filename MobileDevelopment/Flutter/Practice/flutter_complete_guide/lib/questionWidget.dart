import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String question;
  QuestionWidget(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(40),
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 36,color: Colors.red),
      ),
    );
  }
}
