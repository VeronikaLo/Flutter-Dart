import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    title: 'First App',
    home: Scaffold(
      appBar: AppBar(title: Text("Основы компоновки"), centerTitle: true),
      body: Container(
          alignment: Alignment.center,
          color: Colors.lightBlue,
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(15),
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                      children: [BlueBalloon(), RedBalloon()],
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween),
                  Row(
                      children: [BlueBalloon(), RedBalloon(), BlueBalloon()],
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly),
                  Row(
                      children: [RedBalloon(), BlueBalloon()],
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround),
                ],
              ),
              Align(
                alignment: Alignment(-0.7, -0.9),
                child: RedBalloon(),
              ),
              Align(
                alignment: Alignment(-0.2, -0.4),
                child: BlueBalloon(),
              ),
              Align(
                alignment: Alignment(0.8, -1.0),
                child: RedBalloon(),
              ),
            ],
          )),
    ),
  ));
}

class BlueBalloon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}

class RedBalloon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(),
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
