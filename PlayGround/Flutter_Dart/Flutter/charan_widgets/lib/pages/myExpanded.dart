import 'dart:math';

import 'package:flutter/material.dart';

class MyExpanded extends StatefulWidget {
  @override
  _MyExpandedState createState() => _MyExpandedState();
}

class _MyExpandedState extends State<MyExpanded> {
  int flex1 = 1, flex2 = 2, flex3 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shuffle),
        isExtended: true,
        onPressed: () {
          setState(() {
            Random r = new Random();
            flex1 = r.nextInt(10);
            flex2 = r.nextInt(10);
            flex3 = r.nextInt(10);
          });
        },
      ),
      body: SafeArea(
        bottom: true,
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: flex1,
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  // height: 300,
                  child: Text("Flex : `$flex1`"),
                ),
              ),
              Expanded(
                flex: flex2,
                child: Container(
                  color: Colors.cyan,
                  width: 100,
                  child: Text("Flex : `$flex2`"),
                ),
              ),
              Expanded(
                flex: flex3,
                child: Container(
                  child: Text("Flex : `$flex3`"),
                  color: Colors.green,
                  height: 300,
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
