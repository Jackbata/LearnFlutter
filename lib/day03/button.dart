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
        title: Text("商品列表2"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      body: NewBody(),
    );
  }
}

class NewBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<NewBody> {
  var _count = 0;
  final style = TextStyle(color: Colors.black, fontSize: 15);
  final style2 = TextStyle(color: Colors.black, fontSize: 25);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _getButton(),
            Text(
              "当前计数:${_count}",
              style: style,
            ),
            Text("传过来的数据", style: style),
          ],
        ),
      );
  }

  Widget _getButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Colors.red,
          child: Text(
            "+",
            style: style2,
          ),
          onPressed: () {
            setState(() {
              _count++;
            });
          },
        ),
        RaisedButton(
          color: Colors.purple,
          child: Text(
            "-",
            style: style2,
          ),
          onPressed: () {
            setState(() {
              _count--;
            });
          },
        ),
        FlatButton(//自定义圆角button
          color: Colors.amber,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.face,
                color: Colors.purple,
              ),
              Text("收到")
            ],
          ),
          onPressed: (){},//必须设置，否则北京颜色无效
        )
      ],
    );
  }
}
