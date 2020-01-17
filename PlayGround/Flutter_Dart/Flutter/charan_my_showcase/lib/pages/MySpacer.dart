import 'package:flutter/material.dart';

class MySpacer extends StatefulWidget {
  @override
  _MySpacerState createState() => _MySpacerState();
}

class _MySpacerState extends State<MySpacer> {
  MaterialColor fabColor = Colors.red;
  IconData fabIcon = Icons.cancel;
  String fabText = "Remove Space";

  bool isSpacerEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {},
          ),
        ],
        title: Text("Spacer Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                  "Empty Spaces Between The Boxes Below are Spacer Widgets"),
            ),
            Row(
              children: <Widget>[
                isSpacerEnabled ? Spacer(flex: 2) : Container(),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                isSpacerEnabled ? Spacer(flex: 2) : Container(),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                isSpacerEnabled ? Spacer(flex: 2) : Container(),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => setState(() {
          isSpacerEnabled == true
              ? isSpacerEnabled = false
              : isSpacerEnabled = true;
          isSpacerEnabled ? fabColor = Colors.red : fabColor = Colors.green;
          isSpacerEnabled ? fabText = "Remove Spacer " : fabText = "Add Spacer";
          isSpacerEnabled ? fabIcon = Icons.cancel : fabIcon = Icons.add_circle;
        }),
        icon: Icon(
          fabIcon,
          color: Colors.white,
        ),
        label: Text(
          fabText,
          style: TextStyle(color: Colors.white),
        ),

        // ico
      ),
    );
    // home:
  }
}
