import 'package:flutter/material.dart';

class IBStarRating extends StatefulWidget {
  final double? rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;
  final Widget unselectedImage;
  final Widget selectedImage;

  IBStarRating({
    @required this.rating,
    this.maxRating=10,
    this.count=5,
    this.size=30,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffff0000),
    Widget? unselectedImage,
    Widget? selectedImage,
  }): unselectedImage = unselectedImage ?? Icon(Icons.star_border,color: unselectedColor,size: size,),
        selectedImage = selectedImage ?? Icon(Icons.star,color: selectedColor,size: size,)
  ;

  @override
  _IBStarRatingState createState() => _IBStarRatingState();
}

class _IBStarRatingState extends State<IBStarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildUnselectedStar(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildSelectedStar(),
        ),
      ],
    );
  }

  List<Widget> buildUnselectedStar(){
    return List.generate(widget.count, (index){
      return widget.unselectedImage;
    });
  }

  List<Widget> buildSelectedStar(){
    List<Widget> stars = [];
    final star = widget.selectedImage;
    // 构建满填充
    double oneValue = widget.maxRating / widget.count;
    int entireCount = (widget.rating! / oneValue).floor();
    for (var i = 0;i < entireCount;i++){
      stars.add(star);
    }
    // 构建部分填充
    double leftWidth = ((widget.rating! / oneValue) - entireCount) * widget.size;
    final halfStar = ClipRect(
      clipper: IBStarClipper(leftWidth),
      child: star,
    );
    stars.add(halfStar);
    if(stars.length > widget.count){
      return stars.sublist(0,widget.count);
    }
    return stars;
  }
}

class IBStarClipper extends CustomClipper<Rect>{

  double width;

  IBStarClipper(this.width);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(IBStarClipper oldClipper) {
    return oldClipper.width != width;
  }

}