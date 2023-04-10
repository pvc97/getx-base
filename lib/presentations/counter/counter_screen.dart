import 'package:demo_getx/core/controllers/app_controller.dart';
import 'package:demo_getx/localization/app_language.dart';
import 'package:demo_getx/presentations/counter/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterController = Get.find<CounterController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('counter'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(counterController.counter.toString()),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<AppController>()
                    .changeLanguage(language: AppLanguage.vietnamese);
              },
              child: const Text('Change language'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
