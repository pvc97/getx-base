import 'package:demo_getx/data/data_provider/local/local_storage.dart';
import 'package:hive/hive.dart';

class AppStorageImpl implements LocalStorage {
  static const String _boxName = 'app_storage';

  static final AppStorageImpl _instance = AppStorageImpl._internal();

  AppStorageImpl._internal();

  static AppStorageImpl get instance => _instance;

  Future<void> init() async {
    await Hive.openBox(_boxName);
  }

  @override
  T? read<T>(String key) {
    try {
      final value = Hive.box(_boxName).get(key) as T?;
      return value;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> write<T>(String key, T value) {
    return Hive.box(_boxName).put(key, value);
  }

  @override
  Future<void> delete(String key) {
    return Hive.box(_boxName).delete(key);
  }

  @override
  Future<int> deleteAll() {
    return Hive.box(_boxName).clear();
  }
}
