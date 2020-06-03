
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
        title: Text("image"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      body: NewBody(),
    );
  }
}

class NewBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Mystate();
  }
}

class Mystate extends State<NewBody> {
  @override
  Widget build(BuildContext context) {
    var passwordtextEditingController = TextEditingController();
    var nametextEditingController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          TextField(
              controller: nametextEditingController,
              decoration: InputDecoration(
                  icon: Icon(Icons.picture_as_pdf),
                  labelText: "name",
                  hintText: "名字",
                  border: OutlineInputBorder()),
              onChanged: (value) {
                print(value);
              },
              onSubmitted: (value) {
                print(value);
              }),
          SizedBox(height: 10,),
          TextField(
              controller: passwordtextEditingController,
              decoration: InputDecoration(
                  icon: Icon(Icons.picture_as_pdf),
                  labelText: "pasword",
                  hintText: "密码",
                  border: OutlineInputBorder()),
              onChanged: (value) {
                print(value);
              },
              onSubmitted: (value) {
                print(value);
              }),
          SizedBox(height: 10,),
          Container(
            width: 180,
            height: 40,
            child: FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              color: Colors.blue,
              child: Text("登陆"
                ,style: TextStyle(color: Colors.black),),
              onPressed: (){
                var name=nametextEditingController.text;
                var pas=passwordtextEditingController.text;
                print("name:$name pas:$pas");
                nametextEditingController.clear();
                passwordtextEditingController.clear();
              },
            ),
          )
        ],
      ),
    );
  }
}
