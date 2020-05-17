import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:BarryHomePage()
    );
  }
}

class BarryHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个flutter程序",
          style: TextStyle(
              fontSize: 30
          ),
        ),
      ),
      body:ContentBody(),

    );
  }

}
class ContentBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Center(
      child: Text(
        "Hello world",
        style: TextStyle(
            fontSize: 30,
            color: Colors.amber
        ),
      ),
    ) ;
  }

}