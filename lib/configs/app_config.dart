import 'package:demo_getx/data/data_provider/local/app_storage_impl.dart';
import 'package:hive_flutter/adapters.dart';

class AppConfig {
  AppConfig._();

  static Future<void> init() async {
    await Hive.initFlutter();
    await AppStorageImpl.instance.init();
  }

  static void registerAdapters() {
    // Hive.registerAdapter(CounterAdapter());
  }
}
