import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _path;
  String name;

  ImageBanner(this._path);

  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _path,
        fit: BoxFit.cover,
      ),
    );
  }
}
