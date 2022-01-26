import 'package:flutter/material.dart';
import 'package:flutterapp1/day06_douban/main/init_main.dart';


class DBMain extends StatefulWidget {

  @override
  _DBMainState createState() => _DBMainState();
}

class _DBMainState extends State<DBMain> {
  int _currIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
     body:IndexedStack(
       index: _currIndex,
       children: pageChildren,
     ) ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currIndex,
        type: BottomNavigationBarType.fixed,
        items:barItems,
        onTap:(index){
          setState((){
            _currIndex=index;
          });
        },
      ),
    );
  }
}


class DBBottomBar extends BottomNavigationBarItem {
  DBBottomBar(String iconName,String title):super(
    title: Text(title),
    icon: Image.asset("assets/images/tabbar/$iconName.png",width: 32,),
    activeIcon:  Image.asset("assets/images/tabbar/${iconName}_active.png",width: 32,)
  );
}
