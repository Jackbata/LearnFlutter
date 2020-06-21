import 'package:flutter/material.dart';

main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar: AppBar(
            title: Text("第一个flutter程序",
              style: TextStyle(
                  fontSize: 33
              ),
            ),
          ),
          body: Center(
            child: Text(
              "Hello world",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber
              ),
            ),
          ) ,

        ),
      )
  );
}

class BarryHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }



}