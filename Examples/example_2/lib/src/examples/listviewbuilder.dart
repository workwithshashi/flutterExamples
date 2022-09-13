import 'package:example_2/src/widget/fluildcard.dart';
import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatefulWidget {
  ListViewBuilderExample({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderExample> createState() => _ListViewBuilderExampleState();
}

class _ListViewBuilderExampleState extends State<ListViewBuilderExample> {
  @override
  Widget build(BuildContext context) {
    final List<String> names = <String>['Shashi', 'Bala', 'Suresh', 'Kiran'];
    final List colors = [500, 700, 100, 50];
    return Scaffold(
      body: Container(
          child: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, int index) {
          return Container(
              height: 100,
              child: Center(
                child: Text('Names ${names[index]}'),
              ),
              color: Colors.red[colors[index]]);
          // FluidCard(
          //   width: 300.0,
          //   height: 100.0,
          //   title: Text('1 '),
          //   body: Text('Names ${names[index]}'),
          //   elevation: 2.9,
          //   defaultColor: Colors.red,
          // );
        },
      )),
    );
  }
}
