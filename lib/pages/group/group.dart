import 'package:flutter/material.dart';

class IBGroupPage extends StatelessWidget {
  const IBGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("组织"),
      ),
      body: Center(child: Text("组织",style: TextStyle(color: Colors.green),)),
    );
  }
}
