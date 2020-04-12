import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
          child: Center(
            child: Text(
              "Wrap Widget",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // margin: EdgeInsets.only(right: 48),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Without Wrap widget',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 12, right: 12, top: 20, bottom: 20),
                    child: Text(
                      "Here we observe that the layout is overflowing to the right which results in a broken widget",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14.0,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Chip(label: Text("Chip    1")),
                      Chip(label: Text("Chip    2")),
                      Chip(label: Text("Chip    3")),
                      Chip(label: Text("Chip    4")),
                      Chip(label: Text("Chip    5")),
                      Chip(label: Text("Chip    6")),
                      Chip(label: Text("Chip    7")),
                      Chip(label: Text("Chip    8")),
                      Chip(label: Text("Chip    9")),
                      Chip(label: Text("Chip    10")),
                    ],
                  ),
                  Container(
                    child: Wrap(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'With Wrap widget',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 12, right: 12, top: 20, bottom: 20),
                              child: Text(
                                "Here with Wrap Below observe that the layout is not overflowing to the right but runs into next row",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 14.0,
                                  fontStyle: FontStyle.italic,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Wrap(
                              children: <Widget>[
                                Chip(label: Text("Chip    1")),
                                Chip(label: Text("Chip    2")),
                                Chip(label: Text("Chip    3")),
                                Chip(label: Text("Chip    4")),
                                Chip(label: Text("Chip    5")),
                                Chip(label: Text("Chip    6")),
                                Chip(label: Text("Chip    7")),
                                Chip(label: Text("Chip    8")),
                                Chip(label: Text("Chip    9")),
                                Chip(label: Text("Chip    10")),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        // divider(context)
      ),
    );
  }
}

Container divider(BuildContext context) => Container(
      child: Divider(),
      margin: EdgeInsets.only(left: 10, right: 10, top: 28, bottom: 28),
    );
