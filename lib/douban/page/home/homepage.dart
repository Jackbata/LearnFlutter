import 'package:flutter/material.dart';

import 'homepage_content.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: HomePageContent(),
    );
  }
}
