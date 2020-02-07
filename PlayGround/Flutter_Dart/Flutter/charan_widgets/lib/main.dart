import 'package:flutter/material.dart';

import 'pages/myHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Flutter Widgets"),
        ),
        body: MyBody(),
      ),
    );
  }
}
