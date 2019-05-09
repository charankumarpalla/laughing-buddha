import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './text_section.dart';
import './image_banner.dart';


class LocationDetails extends StatelessWidget {
  Widget build(BuildContext conetxt) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tourism&Co"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ImageBanner("assets/images/kiyomizu-dera.jpg"),
          TextSection("Summary", "This is the Summary of the Place shown Above Wit al the beauty with flower and environmantally fantastic"),
          TextSection("How to Go", "Take a easy path with us by booking travel package on us"),
          // TextSection("GREEN", Colors.green),
          // TextSection("BLUE", Colors.blue),
        ],
      ),
    );
  }

}
