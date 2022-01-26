

import 'package:flutter/material.dart';
import 'package:flutterapp1/day06_douban/group/DBGroupContent.dart';
import 'package:flutterapp1/day06_douban/home/DBHome.dart';

class DBGroupPager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group"),
      ),
      body:DBGroupContent() ,
    );
  }
}
