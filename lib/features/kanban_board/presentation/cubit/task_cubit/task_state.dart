part of 'task_cubit.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.addingTask() = _AddingTask;
  const factory TaskState.addedTask() = _AddedTask;
  const factory TaskState.updatingTask() = _UpdatingTask;
  const factory TaskState.updatedTask() = _UpdatedTask;
  const factory TaskState.completingTask() = _CompletingTask;
  const factory TaskState.completedTask() = _CompletedTask;
  const factory TaskState.deletingTask() = _DeletingTask;
  const factory TaskState.deletedTask() = _DeletedTask;
  const factory TaskState.error(String message) = _Error;
}
