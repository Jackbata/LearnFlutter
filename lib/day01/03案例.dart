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
class ContentBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BState();
  }
}
class BState extends State<ContentBody>{
  var flag =true;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: flag,
              onChanged: (value){
                setState(() {
                  flag=value;
                });

              },
            ),
            Text("同意🙆",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          ],

        ));
  }

}