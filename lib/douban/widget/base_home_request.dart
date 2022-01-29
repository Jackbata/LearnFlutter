import 'package:flutterapp1/douban/model/home_model.dart';
import 'package:flutterapp1/douban/service/Config.dart';
import 'package:flutterapp1/douban/service/HttpUtil.dart';

class HomeRequest {
  static Future<List<MovieItem>> requestMoveList(int start) async {
    final movieURL =
        "/movie/top250?start=$start&count=${HomeConfig.movieCount}";

    final result = await HttpRequest.request(movieURL);

    final subjects = result["subjects"];

    List<MovieItem> movies = [];
    for (var sub in subjects) {
      movies.add(MovieItem.fromMap(sub));
    }

    return movies;

  }
}
