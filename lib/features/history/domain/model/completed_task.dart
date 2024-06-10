import 'package:freezed_annotation/freezed_annotation.dart';

part 'completed_task.freezed.dart';
part 'completed_task.g.dart';

@freezed
class CompletedTasks with _$CompletedTasks {
  const factory CompletedTasks({
    required List<CompletedTaskItem> items,
  }) = _CompletedTasks;

  factory CompletedTasks.fromJson(Map<String, dynamic> json) => _$CompletedTasksFromJson(json);
}

@freezed
class CompletedTaskItem with _$CompletedTaskItem {
  const factory CompletedTaskItem({
    @JsonKey(name: "completed_at") required String completedAt,
    required String content,
    required String id,
    @JsonKey(name: "project_id") required String projectId,
    @JsonKey(name: "section_id") required String sectionId,
    @JsonKey(name: "task_id") required String taskId,
  }) = _CompletedTaskItem;

  factory CompletedTaskItem.fromJson(Map<String, dynamic> json) => _$CompletedTaskItemFromJson(json);
}
