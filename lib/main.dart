import 'package:douban/widgets/dashed_line.dart';
import 'package:douban/widgets/star_rating.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IBHomePage(),
    );
  }
}

class IBHomePage extends StatelessWidget {
  const IBHomePage({Key? key}) : super(key: key);
  final title = "Default Title";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: IBHomeContent(),
    );
  }
}

class IBHomeContent extends StatelessWidget {
  const IBHomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello World"),
    );
  }
}




