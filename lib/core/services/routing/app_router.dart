import 'package:take_home/features/history/presentation/task_history.dart';
import 'package:take_home/features/kanban_board/presentation/kanban_board_page.dart';
import 'package:take_home/features/main/presentation/main_page.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          guards: [AuthGuard()],
          children: [
            AutoRoute(page: KanbanBoardRoute.page),
            AutoRoute(page: TaskHistoryRoute.page, maintainState: false),
          ],
        ),
      ];
}

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next(true);
  }
}
