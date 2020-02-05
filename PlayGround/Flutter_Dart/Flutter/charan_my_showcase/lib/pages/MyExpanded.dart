import 'package:flutter/material.dart';

class MyExpanded extends StatefulWidget {
  @override
  _MyExpandedState createState() => _MyExpandedState();
}

class _MyExpandedState extends State<MyExpanded> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Container(
            child: Center(
              child: Text(
                'Expanded Widget',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        body: Text("In Progress...."),
      ),
    );
  }
}
