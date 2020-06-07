import 'package:flutter/material.dart';
import 'package:flutterapp1/douban/model/home_model.dart';
import 'package:flutterapp1/douban/widget/base_home_request.dart';

import 'home_content_item.dart';

class HomePageContent extends StatefulWidget {
  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  final List<MovieItem> movies = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var requestMoveList = HomeRequest.requestMoveList(0).then((res) {
      setState(() {
        movies.addAll(res);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return HomeMovieItem(movies[index]);
      },
      itemCount: movies.length,
    );
  }
}
