abstract class ILocalStorageFacade {
  Future<dynamic> read(String key);

  Future<void> write(String key, var value);

  Future<void> delete(String key);

  Future<void> deleteAll(List<String> keys);

  bool containsKey(dynamic key);

  Future<bool> clear();
}
