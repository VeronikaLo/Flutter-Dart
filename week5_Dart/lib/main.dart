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
  int age = 0;
  var versuch = getAge(age);

  getAge() {
    if (age < 16) {
      return "Вам лучше посмотреть мультики.";
    }
    if (age >= 16 && age < 18) {
      return "Вам можно на этот фильм в сопровождении взрослых.";
    }
    if (age >= 18) {
      return "Вам можно на этот фильм. Приятного просмотра!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Scary Movie"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Ваш возраст',
                  ),
                  onChanged: (String str) {
                    setState(() {
                      age = str;
                    });
                  },
                ),
                Text(""),
                //Greet(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Greet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("check!"),
      onPressed: () {},
    );
  }
}
