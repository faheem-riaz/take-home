import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:take_home/core/constants/app_config.dart';
import 'package:take_home/core/di/service_locator.dart';
import 'package:take_home/core/services/logging/logger.dart';
import 'package:take_home/features/kanban_board/domain/kanban_facade.dart';
import 'package:take_home/features/kanban_board/domain/model/kanban_model.dart';
import 'package:take_home/features/kanban_board/domain/model/section_model.dart';
import 'package:take_home/features/kanban_board/domain/model/time_tracking_model.dart';
import 'package:take_home/features/kanban_board/presentation/cubit/kanban_cubit/kanban_cubit.dart';

part 'task_state.dart';
part 'task_cubit.freezed.dart';

@injectable
class TaskCubit extends Cubit<TaskState> {
  final IKanbanFacade kanbanService;
  final _logger = getLogger('TaskCubit');
  TaskCubit(this.kanbanService) : super(const TaskState.initial());

  void addTask({
    required String content,
    required String description,
    required int priority,
    required String durationUnit,
    required String dueDate,
    required int duration,
  }) async {
    emit(const TaskState.addingTask());
    _logger.i(state);
    final result = await kanbanService.addTask({
      "content": content,
      "description": description,
      "priority": priority + 1,
      "duration_unit": durationUnit,
      "due_date": dueDate,
      "duration": duration,
      "section_id": AppConfig.TODO_ID,
      "project_id": AppConfig.PROJECT_ID,
    });
    await result.fold((task) async {
      emit(const TaskState.addedTask());
      var taskTimeTrackingBox = Hive.box<TimeTrackingModel>('task_time_tracking');
      await taskTimeTrackingBox.put(task.id, TimeTrackingModel(taskId: task.id, sectionId: task.sectionId));
      sl<KanbanCubit>().addTaskInTodo(task);
      _logger.i(state);
    }, (error) {
      emit(TaskState.error(error.message));
      _logger.i(state);
    });
  }

  void updateTask(Task task, Section section) async {
    emit(const TaskState.updatingTask());
    final result = await kanbanService.updateTask({
      "id": task.id,
      "content": task.content,
      "description": task.description,
    });
    result.fold((task) {
      sl<KanbanCubit>().updateTask(task, section);
      emit(const TaskState.updatedTask());
    }, (error) {
      emit(TaskState.error(error.message));
      _logger.i(state);
    });
  }

  void deleteTask(Section section, Task task) async {
    emit(const TaskState.deletingTask());
    final result = await kanbanService.deleteTask(task.id);
    result.fold((val) {
      sl<KanbanCubit>().deleteTask(section, task);
      emit(const TaskState.deletedTask());
    }, (error) {
      TaskState.error(error.message);
    });
  }

  void completeTask(Section section, Task task) async {
    emit(const TaskState.completingTask());
    final result = await kanbanService.completeTask(task.id);
    result.fold((val) {
      sl<KanbanCubit>().deleteTask(section, task);

      emit(const TaskState.deletedTask());
    }, (error) {
      TaskState.error(error.message);
    });
  }
}
