import 'package:demo_getx/presentations/second/second_controller.dart';
import 'package:get/get.dart';

class SecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecondController>(() => SecondController());
  }
}
