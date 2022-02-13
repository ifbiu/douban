import 'package:flutter/material.dart';

class IBHomePage extends StatefulWidget {
  const IBHomePage({Key? key}) : super(key: key);

  @override
  State<IBHomePage> createState() => _IBHomePageState();
}

class _IBHomePageState extends State<IBHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(child: Text("首页",style: TextStyle(color: Colors.red),)),
    );
  }
}
