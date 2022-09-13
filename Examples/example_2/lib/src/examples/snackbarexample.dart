import 'package:flutter/material.dart';

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: const Text('Hello There'),
      action: SnackBarAction(
        label: 'Hi',
        onPressed: () {},
      ),
    );
  }
}
