import 'package:flutter/material.dart';

class Click extends StatelessWidget {
  final Function selectHandler;
  Click(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text('Click Me'),
        color: Colors.blue,
        onPressed: selectHandler,
      ),
    );
  }
}
