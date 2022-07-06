// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './text.dart';
import 'textcontrol.dart';

void main() => runApp(MyApp());
/*void main() {
  runApp(MyApp());
}*/

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _textIndex = 0;
  var texts = [
    'Jujutsu',
    'Kaisen',
  ];

  void _textChange() {
    setState(() {
      if (_textIndex == texts.length - 1) {
        _textIndex = 0;
      } else {
        _textIndex += 1;
      }
    });
    print(_textIndex);
    print(texts.length);
  }

  @override // decorator - makes code clearer , overriding stateless widget
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('Assignment-1'),
        ),
        body: Column(
          children: [
            TextApp(
              texts[_textIndex],
            ), //passing value to function as listindex
            Click(_textChange),
          ],
        ),
      ),
    );
  }
}
