import 'package:flutter/material.dart';

main()=>runApp(MyApp());

/// 确定app样式
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()

    );
  }
}

/// home内容及导航栏
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航栏"),
      ),
      body: BodyWidget(),

    );
  }
}



///要展示的内容
class BodyWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return BoxState();
  }
}
///box状态
class BoxState extends State<BodyWidget>{
  var flag =true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center ,
        children: <Widget>[
          Checkbox(
            value: flag,
            onChanged: (value){
              setState(() {
                flag=value;
              });
            },
          ),
          Text("同意协议",
            style: TextStyle(
                fontSize: 20,
                color: Colors.amber
            ),
          )
        ],
      ),
    );
  }

}