import 'package:flutter/material.dart';
import 'package:charan_my_showcase/pages/Page2.dart';
// import 'package:charan_my_showcase/pages/Future.dart';
import 'package:charan_my_showcase/models/MyButton.dart';

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
            new MyButton("hiiii", Icons.arrow_right, null),
            SizedBox(width: 5),
            new MyButton("hii", null, null),
            SizedBox(width: 5),
            new MyButton("hii", null, null),
            new RaisedButton.icon(
              color: Color(0X00FF0000),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
