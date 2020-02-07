import 'package:flutter/material.dart';

class MyExpanded extends StatefulWidget {
  @override
  _MyExpandedState createState() => _MyExpandedState();
}

class _MyExpandedState extends State<MyExpanded> {
  int _flex0 = 1;
  int _flex1 = 2;
  int _flex2 = 1;
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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    flex: _flex0,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          child: Center(
                            child: Text(
                              '$_flex0',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          color: const Color(0xFF2190f3),
                          width: 48.0,
                          height: 48.0,
                        ),
                        onTap: () {
                          setState(() {
                            _flex0++;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: _flex1,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          child: Center(
                            child: Text(
                              '$_flex1',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          color: const Color(0x882196f3),
                          width: 48.0,
                          height: 48.0,
                        ),
                        onTap: () {
                          setState(() {
                            _flex1++;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: _flex2,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          child: Center(
                            child: Text(
                              '$_flex2',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.green,
                          width: 48.0,
                          height: 48.0,
                        ),
                        onTap: () {
                          setState(() {
                            _flex2++;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              )),
              Container(
                child: RaisedButton(
                  child: Text("Reset"),
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      _flex0 = 1;
                      _flex1 = 2;
                      _flex2 = 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
