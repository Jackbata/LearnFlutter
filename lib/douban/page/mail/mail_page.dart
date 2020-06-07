import 'package:flutter/material.dart';

import 'mailpage_content.dart';

class MailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mail"),
      ),
      body: MailPageContent(),
    );
  }
}
