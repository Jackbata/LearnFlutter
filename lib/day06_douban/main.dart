import 'package:flutter/material.dart';
import 'package:flutterapp1/day06_douban/main/DBMain.dart';
import 'package:flutterapp1/day06_douban/widgets/DashLine.dart';

main() => runApp(DBApp());

class DBApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "豆瓣demo",
      theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: DBMain(),
    );
  }
}
