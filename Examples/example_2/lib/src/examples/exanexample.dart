import 'package:flutter/material.dart';

class ExpandedExample extends StatefulWidget {
  ExpandedExample({Key? key}) : super(key: key);

  @override
  State<ExpandedExample> createState() => _ExpandedExampleState();
}

class _ExpandedExampleState extends State<ExpandedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.grey,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.orange,
          ),
        ),
      ],
    )
        // Column(
        //   children: [
        //     Container(
        //       color: Colors.green,
        //       height: 250,
        //       width: 250,
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.grey,
        //       ),
        //     )
        //   ],
        // ),
        );
  }
}
