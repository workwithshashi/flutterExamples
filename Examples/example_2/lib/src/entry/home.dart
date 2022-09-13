import 'package:example_2/src/examples/dialogexample.dart';
import 'package:example_2/src/examples/snackbarexample.dart';
import 'package:example_2/src/widget/fluildcard.dart';
import 'package:flutter/material.dart';

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              height: 120,
              width: 120,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                color: Colors.red,
                child: Text('Hello'),
              ),
            ),
            FluidCard(
              width: 300.0,
              height: 300.0,
              title: Text('Shashi'),
              body: Text('Kant'),
              elevation: 2.9,
              defaultColor: Colors.blueGrey,
            ),
            TextButton(
              onPressed: () => showDialog(
                  context: context,
                  builder: ( context) => DialogExample()),
              child: const Text('Show Alert Box'),
            ),
            TextButton(
              onPressed: () {
                final snackBar = SnackBar(
                  duration: Duration(seconds: 10),
                  content: const Text('Hello There'),
                  action: SnackBarAction(
                    label: 'Cancel the Order',
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Show Snack Bar'),
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
