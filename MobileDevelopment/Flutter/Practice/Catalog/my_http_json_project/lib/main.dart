import 'dart:async';
import 'dart:convert';
 
import 'package:flutter/material.dart';
 
import 'package:http/http.dart' as http;
 
void main() => runApp(new MyApp());
 
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  String url = 'https://randomuser.me/api/';
 
  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
        var extractdata = jsonDecode(response.body);
         print(extractdata);
         return "Hello";
 
  }
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
            child: new RaisedButton(
      child: new Text('Make Request'),
      onPressed: makeRequest,
    )));
  }
}