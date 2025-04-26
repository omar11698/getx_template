import 'package:get_storage/get_storage.dart';

class AppLocalStorage {
  static final GetStorage _box = GetStorage();

  static Future<void> init() async {
    await GetStorage.init();
  }

  // Write data
  static Future<void> write(String key, dynamic value) async {
    await _box.write(key, value);
  }

  // Read data
  static T? read<T>(String key) {
    return _box.read<T>(key);
  }

  // Remove data
  static Future<void> remove(String key) async {
    await _box.remove(key);
  }

  // Clear all
  static Future<void> clear() async {
    await _box.erase();
  }
}