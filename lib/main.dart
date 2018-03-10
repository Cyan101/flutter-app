import 'package:flutter/material.dart';

void main() {
  runApp(
    new Container(
      decoration: new BoxDecoration(color: Colors.cyan),
      child: new Center(
          child: new RichText(
            text: new TextSpan(
              text: "Hello World~!",
              style: new TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            textDirection: TextDirection.ltr,
          )
      )
    )
  );
}