import 'package:demo_getx/models/bg_color.dart';
import 'package:demo_getx/presentations/first/first_controller.dart';
import 'package:demo_getx/router/app_route.dart';
import 'package:demo_getx/theme/theme_data_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends GetWidget<FirstController> {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: controller.color.value.bgColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('First View'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoute.counter.path);
                },
                child: Text(
                  'Go to Counter',
                  style: TextStyle(
                    color: Theme.of(context).textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.changeColor();
          },
          child: const Icon(Icons.color_lens),
        ),
      ),
    );
  }
}
