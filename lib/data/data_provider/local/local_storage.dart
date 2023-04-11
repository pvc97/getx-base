abstract class LocalStorage {
  T? read<T>(String key);

  Future<void> write<T>(String key, T value);

  Future<void> delete(String key);

  Future<int> deleteAll();
}
