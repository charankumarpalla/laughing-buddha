import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          title: Text("Page2"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.account_box),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text("clear"),
                  ),
                  PopupMenuItem(
                    child: Text("exit"),
                  ),
                ];
              },
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.pinkAccent,
          child: new Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.chat_bubble),
                onPressed: () => showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.lightGreen,
                  builder: (BuildContext context) => Container(
                    height: 400,
                    child: Text("data"),
                  ),
                ),
              )
            ],
          ),
        ),
        body: new Center(
          child: new Container(
            child: new RaisedButton(
              child: Text("Back"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
