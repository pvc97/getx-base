import 'package:demo_getx/models/bg_color.dart';
import 'package:demo_getx/presentations/first/first_controller.dart';
import 'package:demo_getx/utils/logger/logger.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final firstController = Get.find<FirstController>();

  final _counter = 0.obs;

  int get counter => _counter.value;

  void increment() {
    final step = firstController.color.value.stepCount;
    _counter.value += step;
  }

  @override
  void onClose() {
    logger.d('CounterController onClose');
    super.onClose();
  }
}
