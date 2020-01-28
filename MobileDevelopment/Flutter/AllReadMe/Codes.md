<p align="center">
<a><img src="/PlayGround/ResourcesFiles/Flutter_Dart/Example_.png"/></a>

</p>

![-----------------------------------------------------](/PlayGround/ResourcesFiles/ReadMeResources/lines/aqua.png)

```
import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

Future<Post> fetchPost() async {
  final response = await http.get('http://184.172.229.128:31516/money');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    return Post.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

class Post {
  final int id;
  Post({this.id});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
    );
  }
}

Future<PostBalance> fetchPostBalance() async {
  final response = await http.get('http://184.172.229.128:31515/balance');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    return PostBalance.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

class PostBalance {
  final int balance;
  PostBalance({this.balance});
  factory PostBalance.fromJson(Map<String, dynamic> json) {
    return PostBalance(
      balance: json['balance'],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabsExample(),
    );
  }
}

class TabsExample extends StatefulWidget {
  @override
  TabsState createState() => TabsState();
}

class TabsState extends State<TabsExample> {
  Future<Post> post;
  Future<PostBalance> postBalance;
  var a;
  @override
  void initState() {
    super.initState();
    post = fetchPost();

    postBalance = fetchPostBalance();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      // length: 4,
      child: new Scaffold(
        appBar: AppBar(
          title: Text(' Bank'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.account_box),
            ),
            Tab(
              icon: Icon(Icons.atm),
            ),
            Tab(
              icon: Icon(Icons.send),
            ),
            // Tab(
            //   icon: Icon(Icons.refresh),
            // ),
          ]),
        ),
        body: TabBarView(children: [
//             any widget can work very well here <3

          new Container(
            // color: Colors.redAccent,
            child: Center(
              child: Container(
                child: Image.network('https://i.pravatar.cc/'),
              ),
            ),
          ),
          new Container(
            child: Center(
                // color: Colors.greenAccent,
                child: FutureBuilder<Post>(
              future: post,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('Balance :  ${snapshot.data.id.toString()}',
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.normal,
                          fontSize: 30));
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                // By default, show a loading spinner.
                return CircularProgressIndicator();
              },
            )),
          ),
          new Container(
            child: Center(
              // color: Colors.greenAccent,
              child: FutureBuilder<PostBalance>(
                future: postBalance,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text('Credit :  ${snapshot.data.balance.toString()}',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 40));
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }

                  // By default, show a loading spinner.
                  return CircularProgressIndicator();
                },
              ),
            ),
          ),
          // new Container(
          //   child: Center(
          //       // color: Colors.greenAccent,
          //       child: RaisedButton(
          //     child: Text("Refresh"),
          //     onPressed: () {
          //       setState(() {
          //         a = 2;
          //       });
          //     },
          //   )),
          // ),
        ]),
      ),
    );
  }
}

```

![-----------------------------------------------------](/PlayGround/ResourcesFiles/ReadMeResources/lines/aqua.png)

<!--
![-----------------------------------------------------](/PlayGround/ResourcesFiles/ReadMeResources/lines/aqua.png)

![-----------------------------------------------------](/PlayGround/ResourcesFiles/ReadMeResources/lines/aqua.png)

![-----------------------------------------------------](/PlayGround/ResourcesFiles/ReadMeResources/lines/aqua.png)


![-----------------------------------------------------](/PlayGround/ResourcesFiles/ReadMeResources/lines/aqua.png) -->
