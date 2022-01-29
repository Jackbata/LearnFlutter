import 'package:flutter/material.dart';
import 'package:flutterapp1/day06_douban/widgets/base_home_request.dart';

class DBHome extends StatefulWidget {

  @override
  _DBHomeState createState() => _DBHomeState();
}

class _DBHomeState extends State<DBHome> {
  @override
  void initState() {
    super.initState();
    DBHomeRequest.requestMoveList(0).then((value) => {
      print(value.toString())
    });

  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 50,
        // ignore: missing_return
        itemBuilder: (ctx,index){
          return ListTile(title: Text("测试 $index"),);
        }
    );
  }
}
