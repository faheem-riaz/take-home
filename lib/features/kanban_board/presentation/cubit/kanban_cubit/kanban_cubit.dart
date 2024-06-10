import 'dart:convert';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:take_home/core/constants/app_config.dart';
import 'package:take_home/features/kanban_board/domain/model/time_tracking_model.dart';
import 'package:uuid/uuid.dart';
import 'package:take_home/core/services/logging/logger.dart';
import 'package:take_home/features/kanban_board/domain/kanban_facade.dart';
import 'package:take_home/features/kanban_board/domain/model/kanban_model.dart';
import 'package:take_home/features/kanban_board/domain/model/section_model.dart';

part 'kanban_state.dart';
part 'kanban_cubit.freezed.dart';

@lazySingleton
class KanbanCubit extends Cubit<KanbanState> {
  final IKanbanFacade kanbanService;
  final List<Task> _allTasks = [];
  final List<Section> _sections = [];
  final _logger = getLogger("KanbanCubit");

  KanbanCubit(this.kanbanService) : super(const KanbanState.initial()) {
    getAllTasks();
  }
  void getAllTasks() async {
    emit(const KanbanState.laoding());
    final result = await kanbanService.getTasks();
    result.fold((tasks) {
      _allTasks.clear();
      _allTasks.addAll(tasks);
      // Access the Hive box
      var taskTimeTrackingBox = Hive.box<TimeTrackingModel>('task_time_tracking');

      // Iterate over each task
      for (var task in tasks) {
        // Check if the task already exists in the box
        if (!taskTimeTrackingBox.containsKey(task.id)) {
          // Add the task to the box if it doesn't exist
          taskTimeTrackingBox.put(
              task.id,
              TimeTrackingModel(
                taskId: task.id,
                sectionId: getSectionId(task), // Implement getSectionId to map tasks to sections
              ));
        }
      }
      _sections.add(Section(AppConfig.TODO_ID, 'To Do', todo, 'https://img.icons8.com/isometric/50/box.png'));
      _sections.add(Section(
          AppConfig.IN_PROGRESS_ID, 'In Progress', inProgress, 'https://img.icons8.com/color/48/in-progress--v1.png'));
      _sections.add(Section(AppConfig.DONE_ID, 'Done', done, 'https://img.icons8.com/ios-filled/50/checkmark--v2.png'));
      log(_allTasks.length.toString());
      log(_sections.first.tasks.length.toString());
      log(_sections[1].tasks.length.toString());
      log(_sections[2].tasks.length.toString());
      emit(const KanbanState.loadedTasks());
    }, (error) {});
  }

  void taskDragTargetUpdated(Task task, Section section) async {
    log(task.id);
    log(task.sectionId);
    log(section.id);
    final result = await updateTaskSection(task.id, section.id);
    if (result) {
      for (var list in sections) {
        list.tasks.remove(task);
      }
      section.tasks.add(task);

      emit(const KanbanState.updatedTask());
      // This is for dummy state as bloc think it's same state
      emit(const KanbanState.initial());
    } else {
      emit(const KanbanState.error("Network Error Please try again"));
    }
  }

  void taskDraggableUpdated(int taskIndex, Task task, Section section) async {
    final result = await updateTaskSection(task.id, section.id);
    if (result) {
      for (var list in sections) {
        list.tasks.remove(task);
      }
      section.tasks.insert(taskIndex, task);
      emit(const KanbanState.updatedTask());
      // This is for dummy state as bloc think it's same state
      emit(const KanbanState.initial());
    } else {
      emit(const KanbanState.error("Network Error Please try again"));
    }
  }

  Future<bool> updateTaskSection(String taskId, String sectionId) async {
    _logger.e(taskId);
    _logger.e(sectionId);
    var uuid = const Uuid();
    final String v4uuid = uuid.v4();
    log(v4uuid);
    var body = {
      'commands': jsonEncode(
        [
          {
            'type': 'item_move',
            'uuid': v4uuid,
            'args': {
              'id': taskId,
              'section_id': sectionId,
            },
          },
        ],
      ),
    };
    _logger.w(body);
    final result = await kanbanService.updateTaskSection(body);
    return result.fold((task) {
      emit(const KanbanState.updatedTask());
      return true;
    }, (error) {
      _logger.e(error);
      return false;
    });
  }

  void addTaskInTodo(Task task) {
    _allTasks.add(task);

    sections.firstWhere((element) => element.id == AppConfig.TODO_ID).tasks.add(task);

    emit(const KanbanState.addedTask());
  }

  List<Section> get sections => _sections;
  List<Task> get todo => _allTasks.where((element) => element.sectionId == AppConfig.TODO_ID).toList();
  List<Task> get inProgress => _allTasks.where((element) => element.sectionId == AppConfig.IN_PROGRESS_ID).toList();
  List<Task> get done => _allTasks.where((element) => element.sectionId == AppConfig.DONE_ID).toList();

  void updateTask(Task task, Section section) {
    int index = section.tasks.indexWhere((elelemt) => elelemt.id == task.id);
    section.tasks[index] = task;
    emit(const KanbanState.updatedTask());
    emit(const KanbanState.initial());
  }

  void deleteTask(Section section, Task task) {
    int index = section.tasks.indexWhere((element) => element.id == task.id);
    section.tasks.removeAt(index);
    emit(const KanbanState.deletedTask());
    emit(const KanbanState.initial());
  }

  String getSectionId(Task task) {
    if (task.sectionId == AppConfig.DONE_ID) {
      return AppConfig.DONE_ID;
    } else if (task.sectionId == AppConfig.IN_PROGRESS_ID) {
      return AppConfig.IN_PROGRESS_ID;
    } else {
      return AppConfig.TODO_ID;
    }
  }
}
