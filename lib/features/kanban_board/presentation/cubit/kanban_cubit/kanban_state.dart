part of 'kanban_cubit.dart';

@freezed
class KanbanState with _$KanbanState {
  const factory KanbanState.initial() = _Initial;
  const factory KanbanState.addedTask() = _AddedTask;
  const factory KanbanState.updatedTask() = _UpdatedTask;
  const factory KanbanState.deletedTask() = _DeletedTask;
  const factory KanbanState.loadedTasks() = _LoadedTasks;
  const factory KanbanState.laoding() = _Loading;
  const factory KanbanState.error(String error) = _Error;
}
