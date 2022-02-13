import 'package:flutter/material.dart';
import '../group/group.dart';
import '../home/home.dart';
import '../mall/mall.dart';
import '../subject/subject.dart';
import '../profile/profile.dart';
import 'bottom_bar_item.dart';


List<IBBottomBarItem> items =[
  IBBottomBarItem("home","首页"),
  IBBottomBarItem("subject","影音"),
  IBBottomBarItem("group","组织"),
  IBBottomBarItem("mall","小店"),
  IBBottomBarItem("profile","我的"),
];


List<Widget> pages = [
  IBHomePage(),
  IBSubjectPage(),
  IBGroupPage(),
  IBMallPage(),
  IBProfilePage(),
];