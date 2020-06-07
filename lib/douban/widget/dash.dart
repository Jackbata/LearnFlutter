import 'package:flutter/cupertino.dart';

//自定义虚线
class DashWidgh extends StatelessWidget {
  final Color color; //颜色
  final double height;
  final double width;
  final int count; //个数
  final Axis axis; //方向

  DashWidgh(this.color, this.height, this.width, this.count,
      {this.axis = Axis.horizontal});

  @override
  Widget build(BuildContext context) {
    return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: axis,
        children: List.generate(count, (_) {
          return SizedBox(
            width: width,
            height: height,
            child: DecoratedBox(
              decoration: BoxDecoration(color: color),
            ),
          );
        }));
  }
}