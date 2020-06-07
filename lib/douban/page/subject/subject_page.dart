
import 'package:flutter/material.dart';
import 'package:flutterapp1/douban/page/subject/subject_content.dart';

class SubjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("subject"),
      ),
      body: SubjectPageContent(),
    );
  }
}
