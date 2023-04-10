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
        title: const Text('Counter'),
      ),
      body: Center(
        child: Obx(
          () => Text(counterController.counter.toString()),
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
