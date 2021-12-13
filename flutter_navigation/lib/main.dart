import 'package:flutter/material.dart';
import 'package:flutter_navigation/page2.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: routes(),
    );
  }

  Map<String, WidgetBuilder> routes() {
    return {
      '/accueil': (context) => Home(),
      '/page2': (context) => Page2(),
    };
  }
}