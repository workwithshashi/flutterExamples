// ignore: file_names
import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  DropDownWidget(
      {Key? key,
      required this.dropdownValue,
      required this.items,
      this.icon,
      this.icons})
      : super(key: key);

  String? dropdownValue;
  final List<DropdownMenuItem<String>> items;
  final Icon? icon;
  final double? icons;

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.dropdownValue != null
            ? DropdownButton<String>(
                value: widget.dropdownValue,
                icon: widget.icon ?? const Icon(Icons.ac_unit),
                iconSize: widget.icons ?? 20,
                iconEnabledColor: Colors.red,
                onChanged: (String? newVal) {
                  setState(() {
                    widget.dropdownValue = newVal!;
                  });
                },
                items: widget.items)
            : const Text('You missed to give dropdown value')
      ],
    );
  }
}
