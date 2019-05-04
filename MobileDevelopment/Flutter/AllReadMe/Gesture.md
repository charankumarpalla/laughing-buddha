
Tags: 


# So what is the Gesture Detector? How does it work?

The basic overview of gesture detector is a stateless widget which has parameters in its constructor for different touch events. It is worth noting that you cannot use Pan and Scale together since Scale is a superset of Pan. GestureDetector is used purely for detecting gestures and thus does not give any visual response (the Material Ink propagation is absent).

##Example 1

lets see simple example with a tap we print "Gesture : onTap"

```
import 'package:flutter/material.dart';

void main() => runApp(MyGesture());

class MyGesture extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyGesture Demo"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              print("Gesture : onTap");
            },
            child: Container(
              child: Text("Click Anywhere on Screen"),
            ),
          ),
        ),
      ),
    );
  }
}

```
When Clicked on the Screen ,the result looks like below

<p align="center"> 
    <img width="210" height="300" src="../Images/Gesture_a_DeviceScreen.png
    " alt="Tabs Demo">
 </p>


 ```
Reloaded 1 of 432 libraries in 1,078ms.
I/flutter ( 4250): Gesture : onTap
I/flutter ( 4250): Gesture : onTap
I/flutter ( 4250): Gesture : onTap
I/flutter ( 4250): Gesture : onTap
``` 

Wait, what if there is more than one gesture arriving at a time. This scenario is called a **gesture disambiguation** and this is resolved by making the gestures fight one another in the arena

Challengers : 

- https://github.com/flutter/flutter/blob/master/examples/layers/widgets/gestures.dart
<p align="center"> 
    <img width="210" height="300" src="../Images/Gesture_challener_a.png
    " alt="Tabs Demo">
 </p>
 

#Thanks ...Refer: 
 - https://tphangout.com/flutter-gestures/ (Example 1)
- https://github.com/AdarshMaurya/flutter-getting-started/wiki/Introducing-Gestures-and-Animations
 - https://medium.com/flutter-community/flutter-deep-dive-gestures-c16203b3434f