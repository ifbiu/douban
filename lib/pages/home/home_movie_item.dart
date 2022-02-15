import 'dart:ffi';

import 'package:douban/utils/log.dart';
import 'package:douban/widgets/dashed_line.dart';
import 'package:douban/widgets/star_rating.dart';
import 'package:flutter/material.dart';
class HomeMovieItem extends StatelessWidget {
  final List movies;
  final int index;

  HomeMovieItem(this.movies,this.index){}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 8,color: Colors.grey),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(),
          SizedBox(height: 8,),
          buildContent(),
          SizedBox(height: 8,),
          buildFooter(),
        ],
      ),
    );
  }

  Widget buildHeader(){
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(3)
      ),
      child: Text(
        "No.${index+1}",
        style: TextStyle(
          color: Color.fromARGB(255, 131, 95, 36)
        ),
      ),
    );
  }

  Widget buildContent(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildContentImage(),
        SizedBox(width: 8,),
        buildContentInfo(),
        SizedBox(width: 8,),
        buildContentLine(),
        SizedBox(width: 8,),
        buildContentWish(),
      ],
    );
  }

  Widget buildContentImage(){
    return ClipRRect(
        child: Image.network(
          movies[index]["data"][0]["poster"],
          height: 150,
        ),
      borderRadius: BorderRadius.circular(8),
    );
  }

  Widget buildContentInfo(){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContentInfoTitle(),
          SizedBox(height: 8,),
          buildContentInfoRate(),
          SizedBox(height: 8,),
          buildContentInfoDesc(),
        ],
      ),
    );
  }

  Widget buildContentInfoTitle(){
    ibLog("HHHHH", StackTrace.current);
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            child: Icon(Icons.play_circle_fill,color: Colors.redAccent,size: 24,),
            alignment: PlaceholderAlignment.middle
          ),
          ...movies[index]["data"][0]["name"].runes.map((rune){
            return WidgetSpan(
                child: Text(new String.fromCharCode(rune),
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                alignment: PlaceholderAlignment.middle
            );
          }).toList(),
          WidgetSpan(
            child: Text("（${movies[index]['year']}）",
              style: TextStyle(color: Colors.grey,fontSize: 16), ),
              alignment: PlaceholderAlignment.middle
          )
        ]
      )
    );
  }

  Widget buildContentInfoRate(){
    return Row(
      children: [
        IBStarRating(
            rating: double.parse(movies[index]['imdbRating']),
            size: 20,
        ),
        SizedBox(width: 6,),
        Text(movies[index]['imdbRating'],style: TextStyle(fontSize: 16),)
      ],
    );
  }

  Widget buildContentInfoDesc(){
    final genresString = movies[index]["data"][0]['genre'];
    return Text(
        "$genresString",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 16
      ),
    );
  }

  Widget buildContentLine(){
    return Container(
      height: 100,
      child: IBDashedLine(
        axis: Axis.vertical,
        dashedWidth: .5,
        dashedHeight: 6,
        count: 10,
        color: Colors.pink,
      ),
    );
  }

  Widget buildContentWish(){
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/home/wish.png"),
          Text("想看",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 235, 170, 60)),)
        ],
      ),
    );
  }

  Widget buildFooter(){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xffe2e2e2),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Text(movies[index]['originalName'],style: TextStyle(fontSize: 20,color: Color(0xff666666)),),
    );
  }
}
