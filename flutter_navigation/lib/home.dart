import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/page2.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(// This trailing comma makes auto-formatting nicer for build methods.
    ),
      floatingActionButton: FloatingActionButton (
        onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Page2(),
        ),
      );
    },
    child: Icon(Icons.add),
    ),
    );
  }
}