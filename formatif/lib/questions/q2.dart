import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Q2 extends StatefulWidget {
  @override
  _Q2State createState() => _Q2State();
}

class _Q2State extends State<Q2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question 2"),
      ),
      body: Center(// This trailing comma makes auto-formatting nicer for build methods.
      ),
      floatingActionButton: FloatingActionButton (
        onPressed: () {
          //Navigator.push(
          //context,
          //MaterialPageRoute(
          //builder: (context) => Page2(),
          //),
          //);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}