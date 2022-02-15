import 'package:flutter/material.dart';

class IBBottomBarItem extends BottomNavigationBarItem{
  IBBottomBarItem(String iconName,String title)
      :super(
    label: title,
    icon: Image.asset("assets/images/tabbar/${iconName}.png",width: 30,gaplessPlayback: true,),
    activeIcon: Image.asset("assets/images/tabbar/${iconName}_active.png",width: 30,),
  );
}