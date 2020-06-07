import 'package:flutter/material.dart';

///自定义评分展示器
///思路：
///自定义评分星星
///1.布局
///层叠布局
///1.1下面未填充星星
///   星星数、大小、颜色、图片
///1.2上面星星
/// 总分、评分、大小、颜色、图片
///1.2.1 评分计算
/// 总分   总分/个数=每颗星评分
///  计算出满分星星个数 评分/每颗星评分=满星。。未满星
///  裁剪剩余星星位置  未满星*size =要裁减的大小
class StartWidget extends StatefulWidget {
  final double rating; //用户评分
  final double maxRate; //最大分值
  final int count; //星星总数
  final double size; //星星大小
  final Color unselectColor; //未选择时星星颜色
  final Color selectColor; //已选择时星星颜色

  final Widget mUnSelecteImage; //未选择时星星图片
  final Widget mSelecteImage; //选择时星星图片

  StartWidget({
    @required this.rating,
    this.maxRate = 10,
    this.count = 5,
    this.size = 30,
    this.unselectColor = const Color(0xffbbbbbb),
    this.selectColor =  Colors.amber,
    Widget unSelecteImage,
    Widget selecteImage,
  })  : mUnSelecteImage = unSelecteImage ??
      Icon(
        Icons.star_border,
        color: unselectColor,
        size: size,
      ),
        mSelecteImage = unSelecteImage ??
            Icon(
              Icons.star,
              color: selectColor,
              size: size,
            );


  @override
  _StartWidgetState createState() => _StartWidgetState();
}

class _StartWidgetState extends State<StartWidget> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min, children: getUnSlectchildren()),
        Row(mainAxisSize: MainAxisSize.min, children: getSlectchildren())
      ],
    );
  }

  List<Widget> getUnSlectchildren(){
    return List.generate(widget.count-1, (int){
      return widget.mUnSelecteImage;
    });
  }

  List<Widget>  getSlectchildren() {
    List<Widget> fullstars=[];

    //一个星星的分值
    double onValue = widget.maxRate/widget.count;
//要填充的星星数量
    var ratecount = widget.rating/onValue;

    //满星个数
    var fullstart = ratecount.floor();

    //剩余星星的宽度
    var unfullstart = (ratecount-fullstart)* widget.size;

    final star = widget.mSelecteImage;

    for(int i=0;i<fullstart;i++){
      fullstars.add(star);
    }

    var halfStartclipRect = ClipRect(
      child: star,
      clipper:ClipImage(unfullstart) ,
    );

    fullstars.add(halfStartclipRect);

    //避免评分数大于总分值
    if(fullstars!=null && fullstars.length > widget.count){
      return  fullstars.sublist(0,widget.count);
    }
    return fullstars;
  }
}

class ClipImage  extends CustomClipper<Rect>{

  double width;
  ClipImage(this.width);

  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(ClipImage oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper.width != this.width;
  }

}