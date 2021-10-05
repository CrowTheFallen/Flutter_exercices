import 'package:flutter/material.dart';
import 'package:flutter_exercices/questions/q1.dart';
import 'package:flutter_exercices/questions/q2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Q1(),
      routes: routes(),
    );
  }

  Map<String, WidgetBuilder> routes() {
    return {
      '/Question1': (context) => Q1(),
      '/Question2': (context) => Q2(),
    };
  }
}



