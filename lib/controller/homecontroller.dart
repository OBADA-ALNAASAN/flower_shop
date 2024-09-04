import 'package:flower_shop/view/home_page.dart';
import 'package:flower_shop/view/mycart_page.dart';
import 'package:flower_shop/view/sitting_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> pages = [
    const HomePage(),
    const MycartPage(),
    const SittingScreen(),
    const HomePage(),
  ];
  final List<String> images = [
    'assets/images/homelogo.png',
    'assets/images/cartlogo.png',
    'assets/images/settinglogo.png',
    'assets/images/profile.png',
  ];
  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
