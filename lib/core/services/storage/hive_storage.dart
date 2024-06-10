import 'package:hive_flutter/hive_flutter.dart';
import 'package:take_home/core/constants/app_config.dart';
import 'package:take_home/core/services/logging/logger.dart';
import 'package:take_home/core/services/storage/local_storage_facade.dart';

class HiveStorage extends ILocalStorageFacade {
  static final _log = getLogger('Storage');
  static late final Box _box;

  static Future<HiveStorage> init() async {
    _box = await Hive.openBox(AppConfig.APP_NAME);
    _log.i('Storage initialize');
    return HiveStorage();
  }

  @override
  Future<dynamic> read(dynamic key) async {
    return await _box.get(key);
  }

  @override
  bool containsKey(dynamic key) => _box.containsKey(key);

  @override
  Future<void> write(dynamic key, dynamic value) async {
    await _box.put(key, value);
  }

  @override
  Future<void> delete(dynamic key) async {
    await _box.delete(key);
  }

  @override
  Future<void> deleteAll(List<dynamic> keys) async {
    await _box.deleteAll(keys);
  }

  @override
  Future<bool> clear() async {
    await _box.clear();
    return Future.value(true);
  }
}
