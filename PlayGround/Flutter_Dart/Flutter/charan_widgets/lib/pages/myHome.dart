import 'package:flutter/material.dart';
import 'package:charan_widgets/pages/mySafeArea.dart';
import 'package:charan_widgets/pages/myExpanded.dart';
import 'package:charan_widgets/pages/myWrap.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Wrap(
          // spacing: 8.0, // gap between adjacent chips
          // runSpacing: 4.0,
          // mainAxisAlignment: MainAxisAlignment.center,
          direction: Axis.vertical,
          children: <Widget>[
            RaisedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MySafeArea(),
                  ),
                );
              },
              icon: Icon(Icons.format_align_justify),
              color: Colors.cyan,
              label: Text("1.SafeArea"),
              splashColor: Colors.green,
            ),
            SizedBox(width: 10),
            RaisedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyExpanded(),
                  ),
                );
              },
              icon: Icon(Icons.expand_more),
              color: Colors.lime,
              label: Text("2.Expanded"),
              splashColor: Colors.green,
            ),
            SizedBox(width: 20),
            RaisedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWrap(),
                  ),
                );
              },
              icon: Icon(Icons.wrap_text),
              color: Color(0x42CC2244),
              label: Text("3.Wrap"),
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
