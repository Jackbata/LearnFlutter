

import 'package:flutter/material.dart';
import 'package:flutterapp1/day06_douban/group/DBGroupContent.dart';
import 'package:flutterapp1/day06_douban/home/DBHome.dart';
import 'package:flutterapp1/day06_douban/profile/DBProfileContent.dart';
import 'package:flutterapp1/day06_douban/subject/DBSubjectContent.dart';

class DBSubjectPager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subject"),
      ),
      body:DBSubjectContent() ,
    );
  }
}
