import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Contacts"),
            centerTitle: true,
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.lightBlue.shade50,
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            child: ListView(
              children: [for (int i = 1; i < 10; i++) ContactCard()],
            ),
          )),
    );
  }
}

class ContactCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 350,
        height: 100,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 6),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: 80,
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/pic1.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mark Müller',
                    textDirection: TextDirection.ltr,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(' Tel: +49 174 525-347-85',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                Text(' geb: 12.03.1979',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 16, color: Colors.black))
              ],
            )
          ],
        ));
  }
}


/*
class ContactCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 350,
        height: 100,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 6),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: 80,
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/pic2.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rebecca Hoffmann',
                    textDirection: TextDirection.ltr,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Tel: +49 170 421-886-12',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                Text('geb. 23.08.1985 ',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 16, color: Colors.black))
              ],
            )
          ],
        ));
  }
}
*/