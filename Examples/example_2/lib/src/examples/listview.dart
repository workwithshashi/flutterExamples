import 'package:example_2/src/widget/fluildcard.dart';
import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  ListViewExample({Key? key}) : super(key: key);

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          FluidCard(
            width: 300.0,
            height: 100.0,
            title: Text('1 '),
            body: Text('One'),
            elevation: 2.9,
            defaultColor: Colors.blueGrey,
          ),
          FluidCard(
            width: 300.0,
            height: 100.0,
            title: Text('2'),
            body: Text('Two'),
            elevation: 2.9,
            defaultColor: Colors.red,
          ),
          FluidCard(
            width: 300.0,
            height: 100.0,
            title: Text('3'),
            body: Text('Three'),
            elevation: 2.9,
            defaultColor: Colors.green,
          ),
          FluidCard(
            width: 300.0,
            height: 100.0,
            title: Text('4'),
            body: Text('Four'),
            elevation: 2.9,
            defaultColor: Colors.yellow,
          )
        ],
      )),
    );
  }
}
