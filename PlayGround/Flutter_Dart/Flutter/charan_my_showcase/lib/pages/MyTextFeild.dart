import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String value = "";
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.centerLeft,
          width: MediaQuery.of(context).size.width * 0.5,
          child: TextField(
            maxLength: 4,
            readOnly: true,
            onChanged: (text) {
              value = text;
              print(value);
            },
          ),
        ),
      ),
    );
  }
}
