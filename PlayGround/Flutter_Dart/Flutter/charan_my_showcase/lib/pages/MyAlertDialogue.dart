import 'package:flutter/material.dart';
// import 'package:charan_my_showcase/utils/MyUtils.dart';

class MyAlertDialogue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XCAA22222),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              _ackAlert(
                  context); // TODO : Move  all the utils work to MyUtils.dart
            },
          )
        ],
        title: Center(
          child: Text("AlertDialogue"),
        ),
      ),
      body: Container(
        child: Center(
          child: RaisedButton.icon(
              label: Text("choice"),
              icon: Icon(Icons.select_all),
              onPressed: () async {
                final ConfirmAction action = await _asyncAlertDialogue(context);
                print(action);
              }),
        ),
      ),
    );
  }
}

Future<void> _ackAlert(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          "Terms & Conditions..!",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        content: Text(
          "I Here By Agree to use this App for Educational Purpose but not for any Comercial purpose",
          style: TextStyle(fontStyle: FontStyle.normal),
        ),
        actions: <Widget>[
          FlatButton(
            color: Colors.green,
            child: new Text("Agree"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

enum ConfirmAction { CANCEL, ACCEPT }

Future<ConfirmAction> _asyncAlertDialogue(BuildContext context) async {
  return showDialog<ConfirmAction>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Agree for terms ?"),
        );
      });
}
