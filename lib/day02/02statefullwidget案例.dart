import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        title: Text("商品列表"),
      ),
      body: Body("这是Homepage传递过去的参数"),
    );
  }
}

class Body extends StatefulWidget {
  final String title;
  Body(this.title);
  @override
  State<StatefulWidget> createState() {
    return BodyState();
  }
}

class BodyState extends State<Body> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[_getButton(), Text("当前计数：$_count"),Text
          ("传过来的参数：${widget.title}")],
      ),
    );
  }

  Widget _getButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            color: Colors.red,
            child: Text(
              "+",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onPressed: () {
              setState(() {
                _count++;
              });
            }),
        RaisedButton(
            color: Colors.purple,
            child: Text(
              "-",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onPressed: () {
              setState(() {
                _count--;
              });
            })
      ],
    );
  }
}
