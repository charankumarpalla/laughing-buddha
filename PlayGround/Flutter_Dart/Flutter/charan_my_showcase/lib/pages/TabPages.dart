import 'package:flutter/material.dart';

class Tabpages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _kTabs = <Tab>[
      Tab(child: Text("Preview")),
      Tab(child: Text("Code")),
    ];

    final _kTabPages = <Widget>[
      Center(child: Text("222")),
      Center(child: Text("2")),
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // title: Text("data"),
          bottom: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
        // backgroundColor: Colors.white,
        // bottomNavigationBar: TabBar(
        //   isScrollable: false,
        //   // Color: Colors.amber,
        //   labelColor: Colors.green,
        //   unselectedLabelColor: Colors.blue,
        //   // indicatorSize: TabBarIndicatorSize.label,
        //   indicatorPadding: EdgeInsets.all(5.0),
        //   indicatorColor: Colors.red,
        //   tabs: <Widget>[
        //     Tab(
        //       icon: Icon(Icons.slideshow),
        //     ),
        //     Tab(
        //       icon: Icon(Icons.code),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
