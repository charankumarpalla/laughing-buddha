import 'package:flutter/material.dart';
import './Screens/LocationDetails.dart';
import './style.dart';
void main()=> runApp(MyHomePage());


class MyHomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocationDetails(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        )
      ),
      
    );
  }
}