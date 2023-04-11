import 'package:demo_getx/models/bg_color.dart';
import 'package:get/get.dart';

class FirstController extends GetxController {
  final color = BgColor.blue.obs;

  void changeColor() {
    switch (color.value) {
      case BgColor.red:
        color.value = BgColor.green;
        break;
      case BgColor.green:
        color.value = BgColor.blue;
        break;
      case BgColor.blue:
        color.value = BgColor.red;
        break;
    }
  }
}
