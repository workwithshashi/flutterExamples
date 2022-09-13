import 'package:flutter/material.dart';

class DialogExample extends StatelessWidget {
  const DialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: AlertDialog(
      title: const Text('Dialog Example'),
      content: const Text('Select Yes or No'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, 'No'),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'Yes'),
          child: const Text('Yes'),
        ),
      ],
    ));
  }
}
