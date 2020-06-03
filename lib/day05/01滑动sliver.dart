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
      appBar: AppBar(
        title: Text("滑动案例"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      body:SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverSafeArea(
              sliver: SliverPadding(
                padding: EdgeInsets.all(8),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1.5
                  ),
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext ctx,int int){
                        return Container(color: Color.fromARGB(255, Random().nextInt
                          (256)
                            , Random().nextInt(256), Random().nextInt(256)));
                      },
                    childCount: 100
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
