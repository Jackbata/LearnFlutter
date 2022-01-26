import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashLine extends StatelessWidget {
  final Axis axis;
  final double dashWidth;
  final double dashHeight;
  final int count;
  final Color color;

  const DashLine(
      {this.axis = Axis.horizontal,
        this.dashWidth = 1,
        this.dashHeight = 1,
        this.count = 10,
        this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (_) {
        return SizedBox(
          width: dashWidth,
          height: dashHeight,
          child: DecoratedBox(
            decoration: BoxDecoration(color: color),
          ),
        );
      }),
    );
  }
}