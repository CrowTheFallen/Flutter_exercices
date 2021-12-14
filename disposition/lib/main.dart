import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
              child: Row(
                children: <Widget>[
                  Container (
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.66,
                    color: Color.fromRGBO(250, 0, 0, 100),
                  ),
                  Column(
                    children: <Widget>[
                        Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width * 0.160,
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text("Yo"),

                        ),
                      ],
                  ),
                  Column (
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.160,
                        color: Color.fromRGBO(0, 0, 0, 100),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton (
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
