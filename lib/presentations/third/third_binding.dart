import 'package:demo_getx/presentations/third/third_controller.dart';
import 'package:get/get.dart';

class ThirdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThirdController>(() => ThirdController());
  }
}
