import 'package:charan_showcase/pages/Page2.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;

  MyButton(this.label, this.icon, this.color);
  // MyButton({this.label});

  final String m = "page2";

  @override
  Widget build(BuildContext context) {
    print(m);
    return RaisedButton.icon(
      label: Text(label),
      onPressed: () {
        return Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Page2()),
        );
      },
      icon: Icon(icon),
    );
  }
}
