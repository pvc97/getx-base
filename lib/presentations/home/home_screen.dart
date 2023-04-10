import 'package:demo_getx/models/bg_color.dart';
import 'package:demo_getx/presentations/home/home_controller.dart';
import 'package:demo_getx/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    return Obx(
      () => Scaffold(
        backgroundColor: homeController.color.value.bgColor,
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed(AppRoute.counter.path);
            },
            child: const Text('Go to Counter'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            homeController.changeColor();
          },
          child: const Icon(Icons.color_lens),
        ),
      ),
    );
  }
}
