import 'package:flutter/material.dart';
import 'package:charan_showcase/pages/Page2.dart';
import 'package:charan_showcase/pages/MyFuture.dart';
import 'package:charan_showcase/pages/MyAlertDialogue.dart';
import 'package:charan_showcase/pages/MySpacer.dart';
import 'package:charan_showcase/pages/MyTextFeild.dart';
import 'package:charan_showcase/pages/MyExpanded.dart';

// import 'package:charan_showcase/models/MyButton.dart';
import 'package:charan_showcase/pages/MyTabController.dart';
// import 'package:charan_showcase/pages/WidgetWithCodeView.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String saa = "charan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Container(
            child: Center(
          child: Text("All Widget Showcase"),
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => Container(
                color: Colors.green,
                height: 300,
                width: 200,
                child: Text(
                    "This is info space for this app...You can decorate it accordingly"),
              ),
            ),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: "A",
                  child: Text("about me"),
                ),
                PopupMenuItem(
                  value: "help",
                  child: Text("help"),
                ),
              ];
            },
          )
        ],
      ),
      body: new Center(
        child: Wrap(
          // mainAxisAlignment: MainAxisAlignment.center,
          direction: Axis.horizontal,
          children: <Widget>[
            new RaisedButton.icon(
              label: Text("AlertDialogue"),
              icon: Icon(Icons.add_alert),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAlertDialogue()));
              },
            ),
            SizedBox(width: 5),
            new RaisedButton.icon(
              label: Text("Spacer"),
              icon: Icon(Icons.space_bar),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MySpacer()));
              },
            ),
            SizedBox(width: 5),
            new RaisedButton.icon(
              label: Text("TabController"),
              icon: Icon(Icons.tab),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyTabController()));
              },
            ),
            SizedBox(width: 5),
            new RaisedButton.icon(
              color: Color(0X00FF2200),
              label: Text("Navigate"),
              icon: Icon(Icons.arrow_right),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => Page2()),
                );
              },
            ),
            SizedBox(width: 6),
            new RaisedButton.icon(
              color: Color(0XFF2233),
              icon: Icon(Icons.redeem),
              label: Text("Future"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyFuture()));
              },
            ),
            SizedBox(width: 6),
            new RaisedButton.icon(
              color: Color(0XFF2233),
              icon: Icon(Icons.text_fields),
              label: Text("TextField"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyTextField()));
              },
            ),
            SizedBox(width: 6),
            new RaisedButton.icon(
              color: Color(0XFF6633),
              icon: Icon(Icons.expand_more),
              label: Text("Expanded"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyExpanded()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
