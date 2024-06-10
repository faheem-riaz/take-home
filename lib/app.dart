import 'package:take_home/core/constants/app_config.dart';
import 'package:take_home/core/di/service_locator.dart';
import 'package:take_home/core/services/localization/language_cubit.dart';
import 'package:take_home/core/services/routing/app_router.dart';
import 'package:take_home/core/services/routing/navigation_observer.dart';
import 'package:take_home/core/theme/theme_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:take_home/features/comment/presentation/cubit/comment_cubit.dart';
import 'package:take_home/features/history/presentation/cubit/task_history_cubit.dart';
import 'package:take_home/features/kanban_board/domain/model/time_tracking_model.dart';
import 'package:take_home/features/kanban_board/presentation/cubit/kanban_cubit/kanban_cubit.dart';
import 'package:take_home/features/kanban_board/presentation/cubit/timer_cubit/timer_cubit.dart';

final _appRouter = AppRouter();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: sl.allReady(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => sl<ThemeCubit>()),
                BlocProvider(create: (_) => sl<LanguageCubit>()),
                BlocProvider(create: (_) => sl<KanbanCubit>()),
                //TODO: Find a way to over come this
                BlocProvider(create: (_) => TimerCubit(TimeTrackingModel(taskId: "dummy", sectionId: "dummy"))),
                BlocProvider(create: (_) => sl<TaskHistoryCubit>()),
                BlocProvider(create: (_) => sl<CommentCubit>()),
              ],
              child: BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, theme) {
                  return BlocBuilder<LanguageCubit, Locale?>(
                    builder: (context, state) {
                      return MaterialApp.router(
                        routerDelegate: _appRouter.delegate(navigatorObservers: () => [NavigationObserver()]),
                        debugShowCheckedModeBanner: false,
                        routeInformationParser: _appRouter.defaultRouteParser(),
                        title: AppConfig.APP_NAME,
                        theme: theme.themeData,
                        themeMode: ThemeMode.light,
                        localizationsDelegates: AppLocalizations.localizationsDelegates,
                        supportedLocales: AppLocalizations.supportedLocales,
                        locale: state,
                      );
                    },
                  );
                },
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
