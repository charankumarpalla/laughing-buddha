import 'package:flutter/material.dart';

class MyFuture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        hoverColor: Color(0XFF223344),
        focusColor: Color(0XCCDD3344),
        splashColor: Color(0X99999944),
        // onPressed: () async {
        //   var futureValue = await myFuture();
        //   print("Before");
        //   print(futureValue);
        //   print("after");
        // },
        onPressed: () {
          myFuture().then((value) {
            print(myFuture);
          });
          print("Before Completion");
        },
      ),
    );
  }
}

// Future<String> myFuture() {
//   return Future.value("Future Completed now....");
// }

Future<String> myFuture() async {
  await Future.delayed(Duration(seconds: 2));
  return "Future Completed now....";
}
