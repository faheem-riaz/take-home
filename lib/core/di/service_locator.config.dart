// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/comment/domain/comment_facade.dart' as _i9;
import '../../features/comment/infrastructure/comment_api_service.dart' as _i5;
import '../../features/comment/infrastructure/comment_service.dart' as _i10;
import '../../features/comment/presentation/cubit/comment_cubit.dart' as _i11;
import '../../features/history/presentation/cubit/task_history_cubit.dart'
    as _i4;
import '../../features/kanban_board/domain/kanban_facade.dart' as _i12;
import '../../features/kanban_board/infrastructure/kanban_api_service.dart'
    as _i3;
import '../../features/kanban_board/infrastructure/kanban_service.dart' as _i13;
import '../../features/kanban_board/presentation/cubit/kanban_cubit/kanban_cubit.dart'
    as _i15;
import '../../features/kanban_board/presentation/cubit/task_cubit/task_cubit.dart'
    as _i14;
import '../services/localization/language_cubit.dart' as _i16;
import '../services/localization/language_storage_service.dart' as _i8;
import '../services/storage/local_storage_facade.dart' as _i7;
import '../theme/theme_cubit/theme_cubit.dart' as _i6;
import 'register_modules.dart' as _i17;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.KanbanAPIService>(() => _i3.KanbanAPIService.create());
  gh.factory<_i4.TaskHistoryCubit>(() => _i4.TaskHistoryCubit());
  gh.factory<_i5.CommentAPIService>(() => _i5.CommentAPIService.create());
  gh.singleton<_i6.ThemeCubit>(() => _i6.ThemeCubit());
  await gh.factoryAsync<_i7.ILocalStorageFacade>(
    () => injectableModule.hive,
    preResolve: true,
  );
  gh.factory<_i8.LanguageStorageService>(
      () => _i8.LanguageStorageService(gh<_i7.ILocalStorageFacade>()));
  gh.factory<_i9.ICommentFacade>(
      () => _i10.CommentService(gh<_i5.CommentAPIService>()));
  gh.factory<_i11.CommentCubit>(
      () => _i11.CommentCubit(gh<_i9.ICommentFacade>()));
  gh.factory<_i12.IKanbanFacade>(
      () => _i13.KanbanService(gh<_i3.KanbanAPIService>()));
  gh.factory<_i14.TaskCubit>(() => _i14.TaskCubit(gh<_i12.IKanbanFacade>()));
  gh.lazySingleton<_i15.KanbanCubit>(
      () => _i15.KanbanCubit(gh<_i12.IKanbanFacade>()));
  gh.factory<_i16.LanguageCubit>(
      () => _i16.LanguageCubit(gh<_i8.LanguageStorageService>()));
  return getIt;
}

class _$InjectableModule extends _i17.InjectableModule {}
