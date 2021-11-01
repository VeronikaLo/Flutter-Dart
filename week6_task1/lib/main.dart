import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: IdeasList(),
    appBar: AppBar(title: Text("Brilliant Ideas"), centerTitle: true),
  )));
}

class IdeasList extends StatefulWidget {
  @override
  _IdeasListState createState() => _IdeasListState();
}

class _IdeasListState extends State<IdeasList> {
  final Set<String> ideas = {};
  String newIdea = "";

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Brilliant ideas:", style: TextStyle(fontSize: 26)),
      ),
      Container(
          width: 400,
          padding: EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Your idea',
                    ),
                    onChanged: (String str) {
                      setState(() {
                        newIdea = str;
                      });
                    }),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            for (var n in ideas) {
                              ideas.add(n);
                            }
                          });
                        },
                        child: Text('Button'))),
                Text("$ideas")
              ]))
    ]);
  }
}
