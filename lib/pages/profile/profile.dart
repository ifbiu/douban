import 'package:flutter/material.dart';

class IBProfilePage extends StatelessWidget {
  const IBProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Center(child: Text("我的",style: TextStyle(color: Colors.purple),)),
    );
  }
}
