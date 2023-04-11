import 'package:demo_getx/data/data_provider/local/app_storage_impl.dart';
import 'package:demo_getx/localization/app_language.dart';
import 'package:hive_flutter/adapters.dart';

class AppConfig {
  AppConfig._();

  static Future<void> init() async {
    await Hive.initFlutter();
    _registerAdapters();

    await _initLocalStorages();
  }

  static Future<void> _initLocalStorages() async {
    await AppStorageImpl.instance.init();
  }

  static void _registerAdapters() {
    Hive.registerAdapter(AppLanguageAdapter());
  }
}
