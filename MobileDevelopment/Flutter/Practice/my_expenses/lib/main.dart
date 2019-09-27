import 'package:flutter/material.dart';
import 'package:my_expenses/transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Expenses App',
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't2',
      title: 'Shoes',
      price: 45.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Groceries',
      price: 200.27,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expenses App"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            // color: Colors.black,
            child: Card(
              child: Text("Chart"),
              color: Colors.orange,
              elevation: 20,
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                elevation: 20,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 3,
                        ),
                      ),
                      child: Text(
                        '\$${tx.price}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            DateFormat().format(tx.date),
                            // DateFormat().format(tx.date),
                            // DateFormat('yyyy-M-d').format(tx.date),
                            style: TextStyle(
                              color: Colors.greenAccent,
                              fontStyle: FontStyle.italic,
                              // fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
