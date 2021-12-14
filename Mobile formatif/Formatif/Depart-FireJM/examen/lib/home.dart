import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final text = TextEditingController();
  List<QueryDocumentSnapshot> liste = [];

  Future<void> Post() async {
    try {
      CollectionReference task =
          FirebaseFirestore.instance.collection("final-Blanchette");
      task.add({
        "nomDeFamille": "Blanchette",
        "contenu": text.value.text,
      });
      setState(() {});
    } catch (e) {
      const SnackBar(content: Text('Fonctionne pas! -_-'));
    }
  }

  Future<void> Get() async {
    try {
      CollectionReference task =
          FirebaseFirestore.instance.collection("final-Blanchette");

      var results = await task.get();
      liste = results.docs;
      text.clear();
      setState(() {});
    } catch (e) {
      const SnackBar(content: Text('Fonctionne pas! -_-'));
    }
  }

  @override
  void initState() {
    liste = [];
    Get();
    setState(() {});
    super.initState();
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
              child: TextField(controller: text),
            ),
            ElevatedButton(
                onPressed: () {
                  Post();
                  Get();
                },
                child: const Text("lol")),
            Expanded(
              child: ListView(
                children: liste.map(
                  (e) {
                    return ListTile(
                      dense: true,
                      title: Text(e.get("nomDeFamille") +
                          '     ' +
                          e.get("contenu").toString()),
                    );
                  },
                ).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
