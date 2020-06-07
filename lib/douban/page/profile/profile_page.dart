
import 'package:flutter/material.dart';
import 'package:flutterapp1/douban/page/profile/profile_content.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
      ),
      body:ProfilePageContent(),
    );
  }
}
