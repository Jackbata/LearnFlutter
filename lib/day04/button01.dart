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

class NewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      FlatButton(
        padding: EdgeInsets.all(0),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //去除默认间距
        color: Colors.amber,

        textColor: Colors.black,
        onPressed: () {},
      ),
      ButtonTheme(
        minWidth: 20,
        height: 30,
        child: FlatButton(
          padding: EdgeInsets.all(0),
          child: Text("ddsdsdss"),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          color: Colors.deepOrange,
//    child: Text("ds"),
          textColor: Colors.black,
          onPressed: () {},
        ),
      )
    ]);
  }
}
