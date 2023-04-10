import 'package:demo_getx/localization/localization_service.dart';
import 'package:demo_getx/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      getPages: AppRouter.routes,
      initialRoute: AppRouter.initialPage,
      translations: LocalizationService(),
      locale: LocalizationService.locale,
      localizationsDelegates: LocalizationService.localizationsDelegate,
      supportedLocales: LocalizationService.locales,
    );
  }
}
