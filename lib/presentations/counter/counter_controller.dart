import 'package:demo_getx/presentations/home/home_controller.dart';
import 'package:demo_getx/utils/extensions/bg_color_ext.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final homeController = Get.find<HomeController>();

  final _counter = 0.obs;

  int get counter => _counter.value;

  void increment() {
    final step = homeController.color.value.stepCount;
    _counter.value += step;
  }
}
