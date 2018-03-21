import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter!', // Multitasking title
      home: new Scaffold( // The Scaffold widget, from the Material library, provides a default app bar, title, and a body property that holds the widget tree for the home screen.
        appBar: new AppBar(
          leading: new IconButton(icon: new Icon(Icons.add_a_photo), onPressed: null, tooltip: '*Snap!*'),
          title: new Text('Welcome to Flutter'), // Text at the top title bar of the app
        ),
        body: new Center(
          child: new RandomWords(), // Text in the center of the app
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}