import 'package:flutter/material.dart';

class AnswerButtonWiget extends StatelessWidget {
  final String answer;

  final Function onPreseedHandler;

  AnswerButtonWiget(this.answer, this.onPreseedHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // padding: EdgeInsets.all(20),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answer),
        onPressed: onPreseedHandler,
      ),
    );
  }
}
