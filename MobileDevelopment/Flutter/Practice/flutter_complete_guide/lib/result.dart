import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  Result(this.score);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Completed...!!! $score",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Colors.red,
        ),
      ),
    );
  }
}
