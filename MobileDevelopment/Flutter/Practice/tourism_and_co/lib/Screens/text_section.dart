// import 'package:flutter/widgets.dart';

// class TextSection extends StatelessWidget{
// Color _color;
// String name;

//   TextSection (String name,Color color){
//     this._color=color;
//     this.name=name;
//   }
//  Widget build(BuildContext context){
//    return Container(
//             decoration: BoxDecoration(
//               color: _color,
//             ),
//             child: Text(name),
//           );
//    }
// }

import 'package:flutter/widgets.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _hPad =16.0;

  TextSection(this._title, this._body);

  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
            child: Text(_title),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
            child: Text(_body))
        ]);
  }
}
