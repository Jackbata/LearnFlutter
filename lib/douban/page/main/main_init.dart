import 'package:flutter/material.dart';
import 'package:flutterapp1/douban/page/group/group_page.dart';
import 'package:flutterapp1/douban/page/home/homepage.dart';
import 'package:flutterapp1/douban/page/mail/mail_page.dart';
import 'package:flutterapp1/douban/page/profile/profile_page.dart';
import 'package:flutterapp1/douban/page/subject/subject_page.dart';

import 'bottom_bar_item.dart';

List<BottomNavigationBarItem> items=[
  MainBottomNavigationBarItem("home", "首页"),
  MainBottomNavigationBarItem("subject", "书影音"),
  MainBottomNavigationBarItem("group", "小组"),
  MainBottomNavigationBarItem("mall", "市集"),
  MainBottomNavigationBarItem("profile", "我的"),
];
List<Widget> pages = [
  HomePage(),
  SubjectPage(),
  GroupPage(),
  MailPage(),
  ProfilePage(),
];


