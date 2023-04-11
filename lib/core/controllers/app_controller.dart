import 'package:demo_getx/data/data_provider/local/app_storage_impl.dart';
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

  void _loadLanguage() {
    final appLanguage =
        AppStorageImpl.instance.read<AppLanguage>('appLanguage');

    if (appLanguage != null) {
      changeLanguage(
        language: appLanguage,
        save: false,
      );
    }
  }

  Future<void> changeLanguage({
    required AppLanguage language,
    bool save = true,
  }) async {
    LocalizationService.changeLocale(language);
    if (save) {
      await AppStorageImpl.instance.write('appLanguage', language);
    }
  }

  void _loadTheme() async {
    final themeMode = AppStorageImpl.instance.read<ThemeMode>('themeMode');

    if (themeMode != null) {
      changeTheme(
        themeMode: themeMode,
        save: false,
      );
    }
  }

  Future<void> changeTheme({
    required ThemeMode themeMode,
    bool save = true,
  }) async {
    Get.changeThemeMode(themeMode);
    if (save) {
      await AppStorageImpl.instance.write('themeMode', themeMode);
    }
  }

  Future<void> toggleTheme() async {
    final themeMode = Get.isDarkMode ? ThemeMode.light : ThemeMode.dark;
    await changeTheme(themeMode: themeMode);
  }
}
