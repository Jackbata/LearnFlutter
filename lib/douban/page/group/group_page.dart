import 'package:flutter/material.dart';

import 'group_page_content.dart';

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("group"),
      ),
      body: GroupPageContent(),
    );
  }
}
