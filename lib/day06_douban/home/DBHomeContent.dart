

import 'package:flutter/material.dart';
import 'package:flutterapp1/day06_douban/home/DBHome.dart';

class DBHomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body:DBHome() ,
    );
  }
}
