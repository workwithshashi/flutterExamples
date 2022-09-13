import 'package:flutter/material.dart';
import 'package:session2/reusable_dropdown.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String dropdownvalue = 'SHA';
  String dropdownvalue1 = 'CDE';
  var _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const Text('Text String Widget'),
            // FlatButton(
            //     onPressed: () {}, child: Text('Flat Button')), // Depricated
            // RaisedButton(onPressed: () {}, child: Text('Raised Button')),
            TextButton(
                onPressed: () {},
                child: const Text('Flat Button -> Text Button')),
            ElevatedButton(
                onPressed: () {},
                child: Text('Raised Button -> Elevated Button')),
            OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Button -> Outlined Button')),
            Container(
                width: 300,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          child: TextField(
                            maxLength: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          child: TextField(
                            maxLength: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            // DropdownButton<String>(
            //     value: dropdownvalue,
            //     icon: const Icon(Icons.ac_unit),
            //     iconSize: 20,
            //     iconEnabledColor: Colors.red,
            //     onChanged: (String? newVal) {
            //       setState(() {
            //         dropdownvalue = newVal!;
            //         print(dropdownvalue);
            //       });
            //     },
            //     items: <String>['A', 'B', 'C', 'D']
            //         .map<DropdownMenuItem<String>>((String val) {
            //       return DropdownMenuItem(
            //         value: val,
            //         child: Text(val),
            //       );
            //     }).toList()),
            DropDownWidget(
              dropdownValue: dropdownvalue1,
              // icon: Icon(Icons.access_alarm),
              icons: 10,
              items: <String>['SHASHI', 'ABC', 'BEF', 'CDE', 'DEFG']
                  .map<DropdownMenuItem<String>>((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Text(val),
                );
              }).toList(),
            ),
            DropDownWidget(
              dropdownValue: dropdownvalue,
              icon: Icon(Icons.backpack),
              // icons: 15,
              items: <String>['SHA', 'ABC', 'XYZ', 'JKL', 'FGH']
                  .map<DropdownMenuItem<String>>((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Text(val),
                );
              }).toList(),
            ),

            Row(
              children: [
                Container(
                  width: 100,
                  child: Checkbox(
                      value: _checkbox,
                      onChanged: (value) {
                        setState(() {
                          _checkbox = !_checkbox;
                        });
                      }),
                )
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
