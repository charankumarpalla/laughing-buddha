import 'package:flutter/material.dart';

class MySafeArea extends StatefulWidget {
  _MySafeAreaState createState() => _MySafeAreaState();
}

class _MySafeAreaState extends State<MySafeArea> {
  bool _isEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: _isEnabled,
        bottom: _isEnabled,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Text(
                "This widget is below safe area. If you remove the SafeArea "
                "widget then this text will be behind the notch.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              // child: Text(data),
            ),
            RaisedButton(
              child: Text(_isEnabled ? "Disable SafeArea" : "Enable SafeArea"),
              splashColor: Colors.yellow,
              onPressed: () {
                setState(() {
                  _isEnabled == true ? _isEnabled = false : _isEnabled = true;
                });
              },
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Text(
                "This widget is Above safe area.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              // child: Text(data),
            ),
            // Text("data"),
          ],
        ),
      ),
    );
  }
}
