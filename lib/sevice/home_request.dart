import 'dart:convert';

import 'package:douban/model/home_model.dart';

import 'http_request.dart';
import 'config.dart';
class HomeRequest{
  static Future<dynamic> requestMoveList(int start) async {
    final movieURL = "/api/v1/top?type=Imdb&skip=${start}&limit=${HomeConfig.movieCount}&lang=Cn";
    final results = await HttpRequest.request(movieURL);
    return results;
  }
}