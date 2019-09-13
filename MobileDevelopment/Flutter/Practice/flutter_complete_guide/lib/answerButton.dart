import 'package:flutter/material.dart';

class AnswerButtonWidget extends StatelessWidget {
  final Function handler;
  final String option;

  AnswerButtonWidget(this.handler, this.option);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(option),
        onPressed: handler,
      ),
    );
  }
}
