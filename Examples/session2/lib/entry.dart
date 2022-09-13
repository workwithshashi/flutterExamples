import 'package:flutter/material.dart';
import 'package:session2/myapp.dart';
import 'package:session2/statevsstateless.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: MyHomePage(
        //   title: 'Demo',
        // ),
        home: ClassB());
  }
}
