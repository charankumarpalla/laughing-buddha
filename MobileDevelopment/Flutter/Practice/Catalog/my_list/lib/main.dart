
//  ListView.separated  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
// ##### https://medium.com/@dev.n/the-complete-flutter-series-article-3-lists-and-grids-in-flutter-b20d1a393e39
// import 'package:flutter/material.dart';

// void main()=>runApp(MyLists());


// class MyLists extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: _MyList(),
//     );
//   }
// }

// class  _MyList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ListView.separated Demo"),
//       ),
//       body: ListView.separated(
//         itemBuilder: (context,position){
//           return Card(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text("Count : $position"),
//             ),
//           );
//         },
//         separatorBuilder: (context,position){
//           return Card(
//             color: Colors.red,
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Text("Seperator $position"),
//             ),
//           );
//         },
//         itemCount: 100,
//       ),
      
//     );
//   }
// }

// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<






// ListView.builder >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
// ##### https://medium.com/@dev.n/the-complete-flutter-series-article-3-lists-and-grids-in-flutter-b20d1a393e39
import 'package:flutter/material.dart';

void main() => runApp(MyLists());

class MyLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _myList(),
    );
  }
}

class _myList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Demo"),
      ),
      body: ListView.builder(
        itemCount: 150,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("charan $position", style: TextStyle(fontSize: 22.0),),
            ),
          );
        },
      ),
    );
  }
}

// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

// ###################

// import 'package:flutter/material.dart';

// void main() => runApp(MyLists());

// class MyLists extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(),
//           body: _MyList(),
//         ));
//   }
// }

// class _MyList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new GridView.builder(
//       itemBuilder: (context, position) {
//         return Card(
//           child: Text("androidVersionNames[position]"),
//         );
//       },
//       itemCount: androidVersionNames.length,
// )
//   }
// }
