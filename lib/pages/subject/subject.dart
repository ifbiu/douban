import 'package:flutter/material.dart';

class IBSubjectPage extends StatelessWidget {
  const IBSubjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("影音"),
      ),
      body: Center(child: Text("影音",style: TextStyle(color: Colors.blue),)),
    );
  }
}
