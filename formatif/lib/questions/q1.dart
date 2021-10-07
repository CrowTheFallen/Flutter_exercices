import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercices/questions/q3.dart';

class Q1 extends StatefulWidget {
  @override
  _Q1State createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question 1"),
      ),
      drawer: Tiroir(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitMode();
          } else {
            return _landscapeMode();
          }
        },
      ),
    );
  }

  Widget _landscapeMode() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  color: Color.fromRGBO(666, 10, 0, 100),
                  //alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
                  child: Text("Texte!"),
                ),
                Container(
                  color: Color.fromRGBO(40, 56, 0, 100),
                  //alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
                  child: Text("Texte!"),
                ),
              ],
            ),
          ),
          new Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  color: Color.fromRGBO(50, 0, 12, 100),
                  //alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
                  child: Text("Texte!"),
                ),
                Container(
                  color: Color.fromRGBO(2, 100, 999, 100),
                  //alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
                  child: Text("Texte!"),
                ),
              ],
            ),
          ),
          Container(
              child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width * 1, 30),
            ),
            onPressed: () {},
            child: Text('lol'),
          )),
        ],
      ),
    );
  }

  Widget _portraitMode() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            color: Color.fromRGBO(250, 0, 0, 100),
            width: MediaQuery.of(context).size.width * 1,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
            child: Text("Texte!"),
          ),
          Container(
            color: Color.fromRGBO(25, 0, 0, 100),
            width: MediaQuery.of(context).size.width * 1,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
            child: Text("Texte!"),
          ),
          Container(
            color: Color.fromRGBO(50, 0, 0, 100),
            width: MediaQuery.of(context).size.width * 1,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
            child: Text("Texte!"),
          ),
          Container(
            color: Color.fromRGBO(2, 100, 0, 100),
            width: MediaQuery.of(context).size.width * 1,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
            child: Text("Texte!"),
          ),
          Container(
              child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width * 1, 30),
            ),
            onPressed: () {},
            child: Text('lol'),
          )),
        ],
      ),
    );
  }
}
