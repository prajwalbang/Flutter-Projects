import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

//Scaffold widget is kind of a wrapper to few different layout widgets
//inside it like the app bar the button, the body.

class Home extends StatelessWidget {
  //const test({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
       body: Row(
         children: <Widget>[
           Expanded(
             child: Image.asset('assets/kakashi.jpg'),
             flex: 3,
           ),
           Expanded(
             flex: 3,
             child: Container(
               padding: EdgeInsets.all(30.0),
               color: Colors.cyan,
               child: Text('1'),
             ),
           ),
           Expanded(
             flex: 2,
             child: Container(
               padding: EdgeInsets.all(30.0),
               color: Colors.pinkAccent,
               child: Text('2'),
             ),
           ),
           Expanded(
             flex: 1,
             child: Container(
               padding: EdgeInsets.all(30.0),
               color: Colors.amber,
               child: Text('3'),
             ),
           ),
         ],
       ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

// Column(
// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.end,
// children: <Widget>[
// Container(
// padding: EdgeInsets.all(30.0),
// color: Colors.pinkAccent,
// child: Text('Two'),
// ),
// Container(
// padding: EdgeInsets.all(40.0),
// color: Colors.amber,
// child: Text('Three'),
// ),
// Container(
// padding: EdgeInsets.all(20.0),
// color: Colors.cyan,
// child: Text('One'),
// ),
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: <Widget>[
// Text('Hello World!'),
// TextButton(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
// foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
// ),
// onPressed: () { },
// child: Text('Click Me'),
// ),
// Container(
//
// color: Colors.cyan,
// padding: EdgeInsets.all(30.0),
// child: Text('Inside Container'),
// ),
// ],
// ),

// Padding(
// padding: EdgeInsets.all(30.0),
// child: Text('hello'),
// ),
//Container(
//   padding: EdgeInsets.all(20.0),
//   margin: EdgeInsets.all(30.0),
//   color: Colors.grey[400],
//   child: Text('hello'),
// ),
//Center(
// child: IconButton(
//   onPressed: () {},
//   icon: const Icon(Icons.alternate_email),
//   color: Colors.amber,
// ),
//   child: ElevatedButton.icon(
//     icon: Icon(
//       Icons.mail,
//     ),
//     label: const Text('Mail Me'),
//     onPressed: () {
//       print('Pressed');
//     },
//     style: ElevatedButton.styleFrom(
//     primary: Colors.lightBlue,
//     shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(20.0),
//     ),
//   ),
// ),
//),