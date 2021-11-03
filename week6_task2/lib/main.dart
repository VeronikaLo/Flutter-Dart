import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: ButterfliesList(),
    appBar: AppBar(
      title: const Text("Butterflies"),
      centerTitle: true,
    ),
  )));
}

class ButterfliesList extends StatefulWidget {
  @override
  _ButterfliesListState createState() => _ButterfliesListState();
}

class _ButterfliesListState extends State<ButterfliesList> {
  final List<String> _butterflies = <String>[
    "Marbled White",
    "Wall",
    "Red Admiral",
    "Grayling",
    "Gatekeeper",
    "Holly Blue"
  ];

  final List<String> _buttText = <String>[
    "The Marbled White is a distinctive and attractive black and white butterfly, unlikely to be mistaken for any other species. It shows a marked preference for purple flowers.",
    "The Wall is named after its habit of basking on walls, rocks, and stony places. The delicately patterned light brown undersides provide good camouflage against a stony or sandy surface.",
    "A large and strong-flying butterfly and common in gardens. This familiar and distinctive insect may be found anywhere in Britain and Ireland and in all habitat types.",
    " А distinctive, large butterfly with a looping and gliding flight. Cryptic colouring provides the Grayling with excellent camouflage, making it difficult to see when at rest on bare ground, tree trunks, or stones.",
    "As its English names suggest, the Gatekeeper (also known as the Hedge Brown) is often encountered where clumps of flowers grow in gateways and along hedgerows and field edges.",
    "Wings are bright blue. Females have black wing edges. Undersides pale blue with small black spots which distinguish them from Common Blue. It tends to fly high around bushes and trees. "
  ];

  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Align(
        alignment: Alignment.topCenter,
        child: Text(
            _selectedIndex == -1 ? "" : " ${_butterflies[_selectedIndex]}",
            style: TextStyle(fontSize: 30)),
      ),
      Container(
          height: 300.0,
          padding: EdgeInsets.all(20.0),
          child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                  _selectedIndex == -1
                      ? 'Click on 🦋'
                      : _buttText[_selectedIndex],
                  style: const TextStyle(fontSize: 20)))),
      Expanded(
          child: Container(
              padding: EdgeInsets.all(15.0),
              height: 200.0,
              child: ListView.builder(
                  padding: const EdgeInsets.all(10),
                  itemExtent: 200,
                  itemCount: _butterflies.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => ListTile(
                        onTap: () {
                          setState(() {
                            // устанавливаем индекс выделенного элемента
                            _selectedIndex = index;
                          });
                        },
                        title: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.yellow[100],
                              border: Border.all(color: Colors.blue, width: 3),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Text("🦋" + _butterflies[index],
                              style: const TextStyle(fontSize: 24)),
                        ),
                        selected: index == _selectedIndex,
                      ))))
    ]);
  }
}
