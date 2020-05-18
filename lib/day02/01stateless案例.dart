
import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: Body(),
    );
  }

}
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: <Widget>[
        ImageCardWidgetItem("apple1","小米1","https://tva1.sinaimg"
            ".cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        ImageCardWidgetItem("apple2","小米2","https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
        ImageCardWidgetItem(
            "apple3",
            "小米3",
            "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
      ],
    );
  }

}
class ImageCardWidgetItem extends StatelessWidget{
  final String title1;
  final String title2;
  final String imageurl;
  final textStyle1=TextStyle(fontSize: 20,color: Colors.blue);
  final textStyle2=TextStyle(fontSize: 30,color: Colors.red);

  ImageCardWidgetItem(this.title1,this.title2,this.imageurl);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(10) ,
      decoration: BoxDecoration(
          border: Border.all(
              width: 3,
              color: Colors.green
          )
      ),
      child: Column(
        children: <Widget>[
          Text(title1,
            style: textStyle1,),
          SizedBox(height: 8,),
          Text(title2,
            style: textStyle2,),
          SizedBox(height: 8,),
          Image.network(imageurl)
        ],
      ),
    );
  }

}