import 'dart:math';

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
var _controller = ScrollController(initialScrollOffset: 100);
bool isShowflatbutton = false;

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
    /**
     * 两种监听滑动方式：
     * 1.controller:ScrollController
     *  1.1 可以设置默认偏移量(默认滑动位置)
     *  1.2 可以监听滑动位置,无法监听滑动的开始和结束时间
     * 2.NotificationListener
     *  2.1 可以监听滑动的开始和结束时间
     */
    return Scaffold(
        appBar: AppBar(
          title: Text("滑动案例"),
        ),
        floatingActionButton: isShowflatbutton
            ? FloatingActionButton(
                child: Icon(Icons.arrow_upward),
                onPressed: () {
                  _controller.animateTo(0,
                      duration: Duration(seconds: 1), curve: Curves.easeIn);
                },
              )
            : null,
        body: NotificationState());
  }
}

class NotificationState extends StatefulWidget {


  @override
  _NotificationStateState createState() => _NotificationStateState();
}

class _NotificationStateState extends State<NotificationState> {


  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        isShowflatbutton = _controller.offset >= 100;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (ScrollNotification notification) {
        if (notification is ScrollStartNotification) {
          print("开始滚动");
        } else if (notification is ScrollUpdateNotification) {
          print("正在滚动...总滚动距离${notification.metrics.maxScrollExtent};"
              "当前滚动距离${notification.metrics}");
        } else if (notification is ScrollEndNotification) {
          print("结束滚动");
        }
        return true;
      },
      child: ListView.builder(
          controller: _controller,
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.people),
              title: Text("联系人$index"),
            );
          }),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
}
