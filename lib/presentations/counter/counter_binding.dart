import 'package:demo_getx/presentations/counter/counter_controller.dart';
import 'package:get/get.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(() => CounterController());
  }
}
