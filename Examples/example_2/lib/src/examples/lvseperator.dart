import 'package:example_2/src/widget/fluildcard.dart';
import 'package:flutter/material.dart';

class ListViewSeperatorExample extends StatefulWidget {
  ListViewSeperatorExample({Key? key}) : super(key: key);

  @override
  State<ListViewSeperatorExample> createState() =>
      _ListViewSeperatorExampleState();
}

class _ListViewSeperatorExampleState extends State<ListViewSeperatorExample> {
  @override
  Widget build(BuildContext context) {
    final List<String> names = <String>['Shashi', 'Bala', 'Suresh', 'Kiran'];
    final List colors = [500, 700, 100, 50];
    return Scaffold(
      body: Container(
          child: ListView.separated(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Container(
              height: 100,
              child: Center(
                child: Text('Names ${names[index]}'),
              ),
              color: Colors.green[colors[index]]);
        },
        separatorBuilder: (context, index) => Divider(),
      )),
    );
  }
}
