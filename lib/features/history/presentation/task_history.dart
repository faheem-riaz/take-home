import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_home/core/di/service_locator.dart';
import 'package:take_home/features/history/presentation/cubit/task_history_cubit.dart';
import 'package:take_home/features/history/presentation/cubit/task_history_state.dart';

@RoutePage()
class TaskHistoryPage extends StatefulWidget {
  const TaskHistoryPage({super.key});

  @override
  State<TaskHistoryPage> createState() => _TaskHistoryPageState();
}

class _TaskHistoryPageState extends State<TaskHistoryPage> {
  final cubit = sl<TaskHistoryCubit>();
  @override
  void initState() {
    cubit.getTaskHistory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<TaskHistoryCubit, TaskHistoryState>(
            bloc: cubit,
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: Text('No data available')),
                loading: () => const Center(child: CircularProgressIndicator.adaptive()),
                loaded: (tasks) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    final task = tasks[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: SizedBox(
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              task.content,
                              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Time spent: ${Duration(seconds: task.timeSpent).inHours}h ${Duration(seconds: task.timeSpent).inMinutes % 60}m',
                            ),
                            Text('Completed at: ${task.formattedCompletedAt}')
                          ],
                        ),
                      ),
                    );
                  },
                ),
                error: (error) => Center(child: Text('Error: $error')),
              );
            },
          ),
        ),
      ],
    );
  }
}
