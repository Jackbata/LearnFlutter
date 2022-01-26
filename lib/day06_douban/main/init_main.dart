import 'package:flutter/material.dart';
import 'package:flutterapp1/day06_douban/group/DBGroupPager.dart';
import 'package:flutterapp1/day06_douban/home/DBHomeContent.dart';
import 'package:flutterapp1/day06_douban/mail/DBMailPager.dart';
import 'package:flutterapp1/day06_douban/main/DBMain.dart';
import 'package:flutterapp1/day06_douban/profile/DBProfilePager.dart';
import 'package:flutterapp1/day06_douban/subject/DBSubjectPager.dart';

List<Widget> pageChildren = [
  DBHomeContent(),
  DBSubjectPager(),
  DBGroupPager(),
  DBMailPager(),
  DBProfilePager(),
];

List<BottomNavigationBarItem> barItems = [
  DBBottomBar("home", "首页"),
  DBBottomBar("subject", "书影音"),
  DBBottomBar("group", "小组"),
  DBBottomBar("mall", "集市"),
  DBBottomBar("profile", "我的"),
];
