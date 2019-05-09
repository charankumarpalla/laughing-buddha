import 'package:flutter/material.dart';
import './Screens/LocationDetails.dart';
void main()=> runApp(MyHomePage());


class MyHomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocationDetails(),
      
    );
  }
}