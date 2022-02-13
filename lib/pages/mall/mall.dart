import 'package:flutter/material.dart';

class IBMallPage extends StatelessWidget {
  const IBMallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("小店"),
      ),
      body: Center(child: Text("小店",style: TextStyle(color: Colors.pink),)),
    );
  }
}
