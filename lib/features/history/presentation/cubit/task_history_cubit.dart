import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:take_home/features/history/domain/model/completed_task.dart';
import 'package:take_home/features/history/domain/model/completed_task_with_time.dart';
import 'package:take_home/features/history/infrastructure/history_reposiotry.dart';
import 'package:take_home/features/history/presentation/cubit/task_history_state.dart';
import 'package:take_home/features/kanban_board/domain/model/time_tracking_model.dart';

@injectable
class TaskHistoryCubit extends Cubit<TaskHistoryState> {
  TaskHistoryCubit() : super(const TaskHistoryState.initial());

  final taskTimeTrackingBox = Hive.box<TimeTrackingModel>('task_time_tracking');

  void getTaskHistory() async {
    emit(const TaskHistoryState.loading());

    try {
      final completedTasks = await HistoryReposiotry.getCompletedTasks();
      List<CompletedTaskItem> items = completedTasks;
      List<CompletedTaskWithTime> tasksWithTime = [];

      for (var item in items) {
        final taskTimer = taskTimeTrackingBox.get(item.taskId);
        final timeSpent = taskTimer?.totalTimeSpent ?? 0;
        tasksWithTime.add(CompletedTaskWithTime(
          taskId: item.taskId,
          sectionId: item.sectionId,
          content: item.content,
          completedAt: item.completedAt,
          timeSpent: timeSpent,
        ));
      }

      emit(TaskHistoryState.loaded(tasksWithTime));
    } catch (e, stack) {
      log(stack.toString());
      emit(TaskHistoryState.error(e.toString()));
    }
  }
}
