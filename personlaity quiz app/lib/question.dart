import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontText;

  Question(this.questiontText); //constructor to initialize Question

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questiontText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
