import 'package:flutter/material.dart';

class FluidCard extends StatefulWidget {
  final double width;
  final double height;
  final Color borderColor;
  final Text title;
  final Widget body;
  final Color dividerColor;
  Color defaultColor;
  double cornerRadius = 0;
  double padding = 10;
  double titleBottomMargin = 0.0;
  double elevation = 2.0;

  FluidCard({
    Key? key,
    required this.width,
    required this.height,
    this.borderColor = Colors.transparent,
    required this.title,
    required this.body,
    this.dividerColor = Colors.transparent,
    this.padding = 0.0,
    this.titleBottomMargin = 0.0,
    this.cornerRadius = 0.0,
    required this.elevation,
    required this.defaultColor,
  }) : super(key: key);

  @override
  State<FluidCard> createState() => _FluidCardState();
}

class _FluidCardState extends State<FluidCard> {
  @override
  Widget build(BuildContext context) {
    final defaultColor = widget.defaultColor;
    final divider = Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(vertical: 0),
            alignment: Alignment.centerRight,
            height: 1.0,
            width: widget.width != null ? widget.width - 50 : 0,
            color: widget.dividerColor),
      ],
    );
    final widgetList = <Widget>[];
    if (widget.title != null) {
      widgetList.add(widget.title);
      widgetList.add(divider);
    }
    if (widget.body != null) {
      widgetList.add(widget.body);
    }
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.borderColor,
        borderRadius: BorderRadius.circular(widget.cornerRadius),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: defaultColor,
        elevation: widget.elevation,
        child: Padding(
          padding: EdgeInsets.all(widget.padding),
          child: Column(
            children: widgetList,
          ),
        ),
      ),
    );
  }
}
