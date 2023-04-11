import 'package:demo_getx/utils/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final selectedIndex = RxInt(0);

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
    logger.d('HomeController onInit()');
  }

  void onBottomNavigationBarItemTapped(int index) {
    selectedIndex.value = index;
    tabController.index = index;
  }
}
