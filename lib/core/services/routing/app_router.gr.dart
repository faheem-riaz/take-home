// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    KanbanBoardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const KanbanBoardPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    TaskHistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TaskHistoryPage(),
      );
    },
  };
}

/// generated route for
/// [KanbanBoardPage]
class KanbanBoardRoute extends PageRouteInfo<void> {
  const KanbanBoardRoute({List<PageRouteInfo>? children})
      : super(
          KanbanBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'KanbanBoardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TaskHistoryPage]
class TaskHistoryRoute extends PageRouteInfo<void> {
  const TaskHistoryRoute({List<PageRouteInfo>? children})
      : super(
          TaskHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaskHistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
