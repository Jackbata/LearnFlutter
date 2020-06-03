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

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text("滑动案例"),
//      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      body:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hello world"),
              background: Image.asset("assets/images/as.jpg",
                fit: BoxFit.cover,),
            ),
            pinned: true,
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2
            ),
            delegate: SliverChildBuilderDelegate(
                    (BuildContext ctx,int int){
                  return Container(color: Color.fromARGB(255, Random().nextInt
                    (256)
                      , Random().nextInt(256), Random().nextInt(256)));
                },
                childCount: 6
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                    (BuildContext context,int index){
                  return ListTile(
                    leading: Icon(Icons.people),
                    title: Text("联系人$index"),
                  );
                },
                childCount: 10
            ),
          )


        ],
      ),
    );
  }
}
