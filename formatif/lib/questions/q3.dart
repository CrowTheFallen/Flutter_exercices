import 'package:flutter/material.dart';
import 'package:flutter_exercices/questions/q1.dart';
import 'package:flutter_exercices/questions/q2.dart';


class Tiroir extends StatefulWidget {
  Tiroir({Key? key}) : super(key: key);



  @override
  _TiroirState createState() => _TiroirState();
}

class _TiroirState extends State<Tiroir> {




  @override
  Widget build(BuildContext context) {
    return Drawer(
      child :ListView(
        padding: EdgeInsets.all(0),
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
            ),
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.add_rounded),
            title: Text("Page 1"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Q1(),
                ),
              );
            },
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.add_rounded),
            title: Text("Page 2"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Q2(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}