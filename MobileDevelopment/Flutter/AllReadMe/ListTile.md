


Table of Contents
=================

   * [a.   title](#a---title)
   * [b.   subtitle](#b---subtitle)
   * [c.   dense](#c---dense)
   * [d.   leading](#d---leading)
   * [e.   trailing](#e---trailing)
   * [f.   contentPadding](#f---contentpadding)
   * [g.   selected](#g---selected)
   * [h.   Gesture recognition](#h---gesture-recognition)
   * [i.   enabled](#i---enabled)
   * [j.   ListTile.divideTiles](#j---listtiledividetiles)
   * [Supplemental code](#supplemental-code)




A ListTile is generally what you use to populate a ListView in Flutter



 # a.   title

The title can take any widget, but it is generally going to be a Text widget.

```
ListTile(
  title: Text('Horse'),
)
```
<p align="center"> 
    <img height="250" src="../Images/ListTile_title.png" alt="ListTile_title">
 </p>

# b.   subtitle
The subtitle is smaller text below the title.

```
ListTile(
  title: Text('Horse'),
  subtitle: Text('A strong animal'),
)
```
<p align="center"> 
    <img height="250" src="../Images/ListTile_subtitle.png" alt="ListTile_Subtitle">
 </p>

# c.   dense
The dense parameter makes the text smaller and packs everything together.

```
ListTile(
  title: Text('Horse'),
  subtitle: Text('A strong animal'),
  dense: true,
)
```

<p align="center"> 
    <img height="250" src="../Images/ListTile_subtitle.png" alt="ListTile_Subtitle">
 </p>


# d.   leading
You can add an image or an icon to the start of the ListTile. This is usually a CircleAvatar or an Icon.


```
ListTile(
  leading: CircleAvatar(
    backgroundImage: NetworkImage(imageUrl),
  ),
  title: Text('Horse'),
)
```


 <p align="center"> 
    <img height="250" src="../Images/ListTile_leading.png" alt="ListTile_leading">
 </p>

```
ListTile(
  leading: Icon(Icons.home),
  title: Text('House'),
)
```

 <p align="center"> 
    <img height="250" src="../Images/ListTile_leading_icon.png" alt="ListTile_leading_icon">
 </p>

# e.   trailing
Setting the trailing places an image at the end of the ListTile. This is particularly useful for indicating a master-detail layout.

```
ListTile(
  title: Text('Horse'),
  trailing: Icon(Icons.keyboard_arrow_right),
)
```



 <p align="center"> 
    <img height="250" src="../Images/ListTile_trailing_icon.png" alt="ListTile_leading_icon">
 </p>


# f.   contentPadding
You can change how much the content is inset on the left and right (but not the top or bottom) by setting the contentPadding. The default is 16.0 but here we will set to 0.0:

```
ListTile(
  title: Text('Horse'),
  trailing: Icon(Icons.keyboard_arrow_right),
  contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
)
```

 <p align="center"> 
    <img height="250" src="../Images/ListTile_contentPadding.png" alt="ListTile_contentPadding">
 </p>

# g.   selected
If a ListTile is selected, the color of the text and icons become the theme’s primary color.

```

ListTile(
  title: Text('Horse'),
  trailing: Icon(Icons.keyboard_arrow_right),
  selected: true,
)
```

  <p align="center"> 
    <img height="250" src="../Images/ListTile_selected.png" alt="ListTile_selected">
 </p>


# h.   Gesture recognition
ListTiles can detect taps or long presses if you include a callback for the onTap or onLongPress parameters. The splash animation is built in.

```
    ListTile(
    title: Text('Horse'),
    onTap: () {
        // do something
    },
    onLongPress: (){
        // do something else
    },
    )

```


  <p align="center"> 
    <img height="250" src="../Images/ListTile_gestureRecognition.gif" alt="ListTile_gestureRecognition">
</p>



# i.   enabled
You can disable gesture detection by setting enabled to false.
```
ListTile(
  title: Text('Horse'),
  onTap: () {
    // this will not get called
  },
  enabled: false,
)

```
<p align="center"> 
    <img height="250" src="../Images/ListTile_enabled.png" alt="ListTile_enabled">
 </p>

# j.   ListTile.divideTiles
The static method divideTiles can be used to add a divider between the tiles. It is pretty faint. You have to look carefully.

```

ListView(
  children: ListTile.divideTiles(
      context: context,
      tiles: [
        ListTile(
          title: Text('Horse'),
        ),
        ListTile(
          title: Text('Cow'),
        ),
        ListTile(
          title: Text('Camel'),
        ),
        ListTile(
          title: Text('Sheep'),
        ),
        ListTile(
          title: Text('Goat'),
        ),
      ]
  ).toList(),
)

```
  <p align="center"> 
    <img height="250" src="../Images/ListTile_dvideTiles.png" alt="ListTile_dvideTiles">
 </p>


# Supplemental code
Here is the code if you would like to play around with it some more.


  <p align="center"> 
    <img height="380" src="../Images/ListTile_examplee.png" alt="ListTile_SupplementalCode">
 </p>


```

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() => runApp(MyListTile());

class MyListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListTile Demo"),
        ),
        body: BodyWidget(),
      ),
    );
  }
}

String horseUrl = 'https://i.stack.imgur.com/Dw6f7.png';
String cowUrl = 'https://i.stack.imgur.com/XPOr3.png';
String camelUrl = 'https://i.stack.imgur.com/YN0m7.png';
String sheepUrl = 'https://i.stack.imgur.com/wKzo8.png';
String goatUrl = 'https://i.stack.imgur.com/Qt4JP.png';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _getTile(horseUrl, "Horse", "horse",context),
        _getTile(cowUrl, "Cow", "cow",context),
        _getTile(camelUrl, "Camel", "camel",context),
        _getTile(sheepUrl, "Sheep", "sheep",context),
        _getTile(goatUrl, "Goat", "goat",context),
      ],
    );
  }
}

Widget _getTile(String myurl, String title, String subtitle,BuildContext context) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(myurl),
      // child: Icon(Icons.hourglass_full),
    ),
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: Icon(Icons.keyboard_arrow_right),
    // dense: true,
    selected: true,
    // enabled: false,
    onTap: (){
      Toast.show(title, context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
      // Scaffold.of(context).showSnackBar(new SnackBar(
      // content: new Text("Sending Message")),
    // );
    },
  );
}

```
**Note :** Add toast dependency in pubspec.yaml

```
dependencies:
  toast: ^0.1.3
```

 -----




  




Reference 
- :ballot_box_with_check: [A complete guide to Flutter’s ListTile](https://medium.com/@studymongolian/a-complete-guide-to-flutters-listtile-597a20a3d449) **Read**