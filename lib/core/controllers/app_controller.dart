import 'package:demo_getx/localization/app_language.dart';
import 'package:demo_getx/localization/localization_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _loadTheme();
    _loadLanguage();
  }

  void _loadLanguage() async {
    // TODO: Read from local storage
    // changeLanguage(
    //   language: AppLanguage.vietnamese,
    //   save: false,
    // );
  }

  void changeLanguage({required AppLanguage language, bool save = true}) {
    LocalizationService.changeLocale(language);
    if (save) {
      // TODO: Save to local storage
    }
  }

  void _loadTheme() async {
    // TODO: Read from local storage
    // changeTheme(
    //   themeMode: ThemeMode.light,
    //   save: false,
    // );
  }

  void changeTheme({required ThemeMode themeMode, bool save = true}) {
    Get.changeThemeMode(themeMode);
    if (save) {
      // TODO: Save to local storage
    }
  }

  void toggleTheme() {
    Get.changeThemeMode(
      Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
    );

    // TODO: Save to local storage
  }
}
