import 'package:douban/pages/main/initialize_items.dart';
import 'package:flutter/material.dart';

class IBMainPage extends StatefulWidget {
  const IBMainPage({Key? key}) : super(key: key);

  @override
  _IBMainPageState createState() => _IBMainPageState();
}

class _IBMainPageState extends State<IBMainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: items,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
