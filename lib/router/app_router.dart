import 'package:demo_getx/presentations/counter/counter_binding.dart';
import 'package:demo_getx/presentations/counter/counter_screen.dart';
import 'package:demo_getx/presentations/first/first_binding.dart';
import 'package:demo_getx/presentations/home/home_binding.dart';
import 'package:demo_getx/presentations/home/home_screen.dart';
import 'package:demo_getx/presentations/second/second_binding.dart';
import 'package:demo_getx/presentations/third/third_binding.dart';
import 'package:demo_getx/router/app_route.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRouter {
  static final initialPage = AppRoute.home.path;

  static final routes = [
    GetPage(
      name: AppRoute.home.path,
      page: () => const HomeScreen(),
      bindings: [
        HomeBinding(),
        FirstBinding(),
        SecondBinding(),
        ThirdBinding(),
      ],
    ),
    GetPage(
      name: AppRoute.counter.path,
      page: () => const CounterScreen(),
      binding: CounterBinding(),
    ),
  ];
}
