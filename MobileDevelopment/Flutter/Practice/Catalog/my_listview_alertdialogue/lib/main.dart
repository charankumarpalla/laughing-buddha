import 'package:flutter/material.dart';

void main() => runApp(MyListAlert());

class MyListAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        // backgroundColor: Colors.blue,
      ),
      home: WidgetScreen(),
    );
  }
}

class WidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyListAlert Demo"),
        toolbarOpacity: 0.7,
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return _MyListView(context, position);
        },
        itemCount: 20,
      ),
    );
  }
}

Widget _MyListView(BuildContext context, int position) {
  return new ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage('https://i.stack.imgur.com/Dw6f7.png'),
    ),
    title: Text("$position"),
    subtitle: Text("$position :  subtitle"),
    trailing: new RaisedButton(
      onPressed: () {
        deleteDialogue(context).then((value) {
          print('Value if $value');
        });
      },
      child: Text("Remove"),
    ),
  );
}

Future<bool> deleteDialogue(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text("Are you Sure.?"),
          actions: <Widget>[
            new FlatButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            new FlatButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      });
}
