import 'package:flutter/material.dart';

void main() => runApp(_MyListTile());

class _MyListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text("MyListTile"),
        ),
        body: _MyListTileBody(),
      ),
    );
  }
}

class _MyListTileBody extends StatelessWidget {
  String horseUrl = 'https://i.stack.imgur.com/Dw6f7.png';
  // String cowUrl = 'https://i.stack.imgur.com/XPOr3.png';
  // String camelUrl = 'https://i.stack.imgur.com/YN0m7.png';
  // String sheepUrl = 'https://i.stack.imgur.com/wKzo8.png';
  // String goatUrl = 'https://i.stack.imgur.com/Qt4JP.png';

  var allList = [
    {
      'title': 'Horse',
      'subTitle': 'horse',
      'url': 'https://i.stack.imgur.com/Dw6f7.png',
      'actionButton': Icon(Icons.arrow_right)
    },
    {
      'title': 'Cow',
      'subTitle': 'cow',
      'url': 'https://i.stack.imgur.com/XPOr3.png',
      'actionButton': Icon(Icons.arrow_right)
    },
    {
      'title': 'Camel',
      'subTitle': 'camel',
      'url': 'https://i.stack.imgur.com/YN0m7.png',
      'actionButton': Icon(Icons.arrow_right)
    },
    {
      'title': 'Sheep',
      'subTitle': 'sheep',
      'url': 'https://i.stack.imgur.com/wKzo8.png',
      'actionButton': Icon(Icons.arrow_right)
    },
    {
      'title': 'Goat',
      'subTitle': 'goat',
      'url': 'https://i.stack.imgur.com/Qt4JP.png',
      'actionButton': Icon(Icons.arrow_right)
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Title"),
      subtitle: Text("SubTitle"),
      dense: true,
      trailing: CircleAvatar(
        backgroundImage: NetworkImage(horseUrl),
      ),
    );
  }
}

Widget MyTile() {}
