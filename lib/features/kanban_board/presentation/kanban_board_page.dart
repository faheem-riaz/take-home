import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_home/core/di/service_locator.dart';
import 'package:take_home/core/extensions/e_build_context.dart';
import 'package:take_home/features/kanban_board/presentation/cubit/kanban_cubit/kanban_cubit.dart';
import 'package:take_home/features/kanban_board/presentation/widgets/kanban_data_list.dart';

@RoutePage()
class KanbanBoardPage extends StatefulWidget {
  const KanbanBoardPage({super.key});

  @override
  State<KanbanBoardPage> createState() => _KanbanBoardPageState();
}

class _KanbanBoardPageState extends State<KanbanBoardPage> {
  final cubit = sl<KanbanCubit>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<KanbanCubit, KanbanState>(
        bloc: cubit,
        builder: (context, state) {
          return Row(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: cubit.sections.length,
                  itemBuilder: (context, index) =>
                      SizedBox(width: context.width / 3, child: KanbanDataList(section: cubit.sections[index])),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
