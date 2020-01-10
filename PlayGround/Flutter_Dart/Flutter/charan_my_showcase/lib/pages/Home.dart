import 'package:flutter/material.dart';
import 'package:charan_my_showcase/pages/Page2.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Container(
          child: Center(
            child: Text("data"),
          )
        ),
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
        child: new RaisedButton(
          child: Text("Next Page    -----> "),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => Page2()),
            );
          },
        ),
      ),
    );
  }
}
