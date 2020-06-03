import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      body: NewBody(),
    );
  }
}

class NewBody  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return FadeInImage(//占位图
      placeholder: AssetImage("assets/images/as.jpg"),
      fadeInDuration: Duration(milliseconds: 3),
      image: NetworkImage("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=80737749,1866961412&fm=26&gp=0.jpg"),

    );

    Image.asset("assets/images/asw.jpg");
    return Image(
      image: AssetImage("assets/images/as.jpeg"),
//      image: NetworkImage("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=80737749,1866961412&fm=26&gp=0.jpg"),
//      width: 200,
//      height: 200,
      fit: BoxFit.fitHeight,
//      alignment: Alignment.bottomCenter,
    );
  }
}
