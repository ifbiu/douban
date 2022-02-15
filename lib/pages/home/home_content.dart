import 'package:douban/model/home_model.dart';
import 'package:douban/pages/main/initialize_items.dart';
import 'package:flutter/material.dart';

import '../../sevice/home_request.dart';
import 'home_movie_item.dart';
class IBHomeContent extends StatefulWidget {
  const IBHomeContent({Key? key}) : super(key: key);

  @override
  _IBHomeContentState createState() => _IBHomeContentState();
}

class _IBHomeContentState extends State<IBHomeContent> {
  final List movies = [];

  @override
  void initState() {
    super.initState();
    HomeRequest.requestMoveList(0).then((value){
      movies.addAll(value);
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
        itemBuilder: (ctx,index){
            return HomeMovieItem(movies,index);
        }
    );
  }
}
