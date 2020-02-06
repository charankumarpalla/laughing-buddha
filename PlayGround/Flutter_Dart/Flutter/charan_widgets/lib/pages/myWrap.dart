import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Text("This is Sample for Wrapping text ---->>>"),
            SizedBox(width: 40),
            Text("Only By Using Wrap , You can read This............."),
          ],
        ),
      ),
    );
  }
}
