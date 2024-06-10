import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_home/core/enums/routing_indexes.dart';
import 'package:take_home/core/extensions/e_build_context.dart';
import 'package:take_home/core/extensions/string_extension.dart';
import 'package:take_home/core/services/localization/language_cubit.dart';
import 'package:take_home/core/services/routing/app_router.dart';
import 'package:take_home/core/theme/app_colors.dart';
import 'package:take_home/features/kanban_board/presentation/widgets/add_task.dart';
import 'package:take_home/features/main/presentation/widgets/app_drawer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoTabsScaffold(
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => const AddTask(),
            );
          },
          child: const Icon(Icons.add),
        ),
        drawer: const AppDrawer(),
        appBarBuilder: (context, tabsRouter) => AppBar(
          title: Text(RoutingIndexes.values[tabsRouter.activeIndex].name.capitalize()),
          backgroundColor: AppColors.scaffoldBackground,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                width: 45,
                height: 40,
                child: DropdownButtonFormField<String>(
                  dropdownColor: AppColors.cardBackground,
                  padding: EdgeInsets.zero,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    filled: false,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  items: AppLocalizations.supportedLocales
                      .map(
                        (element) => DropdownMenuItem<String>(
                          value: element.languageCode,
                          child: Text(element.languageCode),
                        ),
                      )
                      .toList(),
                  onChanged: (String? local) {
                    if (local != null) {
                      context.read<LanguageCubit>().updateLanguage(Locale(local));
                    }
                  },
                  value: context.localization.localeName,
                ),
              ),
            ),
          ],
        ),
        homeIndex: 0,
        routes: const [KanbanBoardRoute(), TaskHistoryRoute()],
      ),
    );
  }
}
