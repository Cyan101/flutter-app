import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.amberAccent,
      child: new InkWell(
        child: new Column(
          children: <Widget>[
            new Text("Lets Quiz~!"),
            new Text("Tap to start!!!")
          ], // Widget
        ), // Column
      ), // Inkwell
    ); // Material
  }
}