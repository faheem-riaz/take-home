import 'package:injectable/injectable.dart';
import 'package:take_home/core/services/storage/hive_storage.dart';
import 'package:take_home/core/services/storage/local_storage_facade.dart';

@module
abstract class InjectableModule {
  @preResolve
  @Injectable(as: ILocalStorageFacade)
  Future<HiveStorage> get hive async => await HiveStorage.init();
}
