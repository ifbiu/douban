import 'package:flutter/material.dart';

class IBDashedLine extends StatefulWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;

  IBDashedLine({
    this.axis = Axis.horizontal,
    this.dashedWidth = 1,
    this.dashedHeight = 1,
    this.count = 10,
    this.color = Colors.red
  });

  @override
  _IBDashedLineState createState() => _IBDashedLineState();
}

class _IBDashedLineState extends State<IBDashedLine> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: widget.axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(widget.count, (_) {
        return SizedBox(
          width: widget.dashedWidth,
          height: widget.dashedHeight,
          child: DecoratedBox(
            decoration: BoxDecoration(color: widget.color),
          ),
        );
      }),
    );
  }
}