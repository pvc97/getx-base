import 'package:demo_getx/core/controllers/app_controller.dart';
import 'package:demo_getx/presentations/first/first_screen.dart';
import 'package:demo_getx/presentations/home/home_controller.dart';
import 'package:demo_getx/presentations/home/widgets/home_bottom_navigation_bar.dart';
import 'package:demo_getx/presentations/second/second_screen.dart';
import 'package:demo_getx/presentations/third/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final homeController = Get.find<HomeController>();

    // return Obx(
    //   () => Scaffold(
    //     backgroundColor: homeController.color.value.bgColor,
    //     appBar: AppBar(
    //       title: Text('home'.tr),
    //       actions: [
    //         IconButton(
    //           icon: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode),
    //           onPressed: () {
    //             Get.find<AppController>().toggleTheme();
    //           },
    //         ),
    //       ],
    //     ),
    //     body: Center(
    //       child: ElevatedButton(
    //         onPressed: () {
    //           Get.toNamed(AppRoute.counter.path);
    //         },
    //         child: Text(
    //           'Go to Counter',
    //           style: TextStyle(
    //             color: Theme.of(context).textColor,
    //           ),
    //         ),
    //       ),
    //     ),
    //     floatingActionButton: FloatingActionButton(
    //       onPressed: () {
    //         homeController.changeColor();
    //       },
    //       child: const Icon(Icons.color_lens),
    //     ),
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr),
        actions: [
          IconButton(
            icon: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              Get.find<AppController>().toggleTheme();
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: controller.tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          FirstScreen(),
          SecondScreen(),
          ThirdScreen(),
        ],
      ),
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }
}
