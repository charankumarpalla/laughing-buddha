import 'package:flutter/material.dart';
import 'package:charan_showcase/pages/TabPages.dart';

class MyTabController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final _kTabs = <Tab>[
    //   Tab(child: Text("Preview")),
    //   Tab(child: Text("Code")),
    // ];

    // final _kTabPages = <Widget>[
    //   Center(child: Tabpages()),
    //   Center(child: Text("2")),
    // ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.green,
            appBar: AppBar(
              title: Text("Tab Controller"),
              // bottom: TabBar(
              //   tabs: _kTabs,
              // ),
            ),
            body: Tabpages(),
            // body: TabBarView(
            //   children: _kTabPages,
            // ),
          ),
        ));
  }
}
