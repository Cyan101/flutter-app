import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter!', // Multitasking title
      home: new Scaffold( // The Scaffold widget, from the Material library, provides a default app bar, title, and a body property that holds the widget tree for the home screen.
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'), // Text at the top title bar of the app
        ),
        body: new Center(
          child: new Text('Hello World'), // Text in the center of the app
        ),
      ),
    );
  }
}