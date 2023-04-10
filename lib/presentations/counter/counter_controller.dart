import 'package:get/get.dart';

class CounterController extends GetxController {
  // The counter value
  final _counter = 0.obs;

  // The counter value
  int get counter => _counter.value;

  // Increment the counter
  void increment() => _counter.value++;

  // Decrement the counter
  void decrement() => _counter.value--;
}
