

import 'package:flutter/material.dart';
import 'package:flutterapp1/day06_douban/group/DBGroupContent.dart';
import 'package:flutterapp1/day06_douban/home/DBHome.dart';
import 'package:flutterapp1/day06_douban/mail/DBMailContent.dart';

class DBMailPager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mail"),
      ),
      body:DBMailContent() ,
    );
  }
}
