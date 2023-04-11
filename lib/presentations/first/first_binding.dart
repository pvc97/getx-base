import 'package:demo_getx/presentations/first/first_controller.dart';
import 'package:get/get.dart';

class FirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstController>(() => FirstController());
  }
}
