

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DBStartRating extends StatefulWidget {
  final double currRating;
  final double maxRating;
  final int count;
  final double size;
  final Color unSelecteColor;
  final Color selecteColor;
  final Widget unSelecteIcon;
  final Widget selecteIcon;

  DBStartRating(
      {@required this.currRating,
        this.maxRating = 10,
        this.count = 5,
        this.size = 30,
        this.selecteColor = Colors.red,
        this.unSelecteColor = Colors.grey,
        Widget unSelecteIcon1,
        Widget  selecteIcon1
      }):unSelecteIcon = unSelecteIcon1??Icon(
    Icons.star_border,
    color: unSelecteColor,
    size: size,
  ),
        selecteIcon = selecteIcon1??Icon(
          Icons.star,
          color: selecteColor,
          size: size,
        )

  ;

  @override
  _DBStartRatingState createState() => _DBStartRatingState();
}

class _DBStartRatingState extends State<DBStartRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row
          (mainAxisSize: MainAxisSize.min,  children:buildUnSelectStart()),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildSelectStart(),
        )
      ],
    );
  }

  List<Widget> buildUnSelectStart() {
    return List.generate(widget.count, (index) =>
        buildStart()
    );
  }
  List<Widget> buildSelectStart() {
    //1.创建start
    List<Widget> starts=[];
    //2.完整start
    double oneVaule=widget.maxRating/widget.count;
    int fullStart = (widget.currRating/oneVaule).floor();
    for(int i=0;i<fullStart;i++){
      starts.add(Icon(
        Icons.star,
        color: widget.selecteColor,
        size: widget.size,
      ));
    }
    //3.不完整start
    var emptyStart = widget.currRating/oneVaule-fullStart;
    var wight =   emptyStart*widget.size;
    starts.add( ClipRect(
        child: Icon(
          Icons.star,
          color: widget.selecteColor,
          size: widget.size,
        ),
        clipper:DBStartCliper(wight)
    ));

    return starts;
  }

  Icon buildStart() {
    return Icon(
      Icons.star_border,
      color: widget.unSelecteColor,
      size: widget.size,
    );
  }
}
class DBStartCliper extends CustomClipper<Rect>{
  final double widght;
  DBStartCliper(this.widght);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, widght, size.height);
  }

  @override
  bool shouldReclip(DBStartCliper oldClipper) {
    return  oldClipper.widght!=widght;
  }

}
