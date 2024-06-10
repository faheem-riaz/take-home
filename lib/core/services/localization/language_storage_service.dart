import 'package:injectable/injectable.dart';
import 'package:take_home/core/services/logging/logger.dart';
import 'package:take_home/core/services/storage/local_storage_facade.dart';

@injectable
class LanguageStorageService {
  final ILocalStorageFacade hiveStorage;
  LanguageStorageService(this.hiveStorage);

  final _logger = getLogger('LanguageStorageService');
  static const _languageKey = 'language';

  Future<void> saveLanguage({required String languageCode}) async {
    _logger.i("Saving current language");
    await hiveStorage.write(_languageKey, languageCode);
  }

  Future<String?> getLanguage() async {
    _logger.i("reading language");
    return hiveStorage.containsKey(_languageKey) ? await hiveStorage.read(_languageKey) : null;
  }
}
