import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double counter = 18;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Vs. Stateless Widget"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          decrement();
                        },
                        icon: Icon(Icons.remove)),
                    Text("$counter"),
                    IconButton(
                        onPressed: () {
                          increment();
                        },
                        icon: Icon(Icons.add)),
                  ],
                ),
                Text(
                    "Flutter widgets are built using a modern framework that takes inspiration from React. The central idea is that you build your UI out of widgets. Widgets describe what their view should look like given their current configuration and state.",
                    style: TextStyle(fontSize: counter)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
