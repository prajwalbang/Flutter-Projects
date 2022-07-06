import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  final String displayingText;
  TextApp(this.displayingText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(145),
      child: Text(
        displayingText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
