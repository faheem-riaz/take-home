import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_home/core/constants/app_config.dart';
part 'kanban_model.freezed.dart';
part 'kanban_model.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    @JsonKey(name: "comment_count") required int commentCount,
    @JsonKey(name: "is_completed") required bool isCompleted,
    @JsonKey(name: "section_id") required String sectionId,
    @JsonKey(name: "project_id") required String projectId,
    @JsonKey(name: "content") required String content,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "due") required Due due,
    @JsonKey(name: "duration") required TaskDuration duration,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "priority") required int priority,
    @JsonKey(name: "url") required String url,
  }) = _Task;

  const Task._();

  String get section => getSection(sectionId);

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);

  String getSection(String sectionId) {
    if (sectionId == AppConfig.TODO_ID) {
      return 'To Do';
    } else if (sectionId == AppConfig.IN_PROGRESS_ID) {
      return 'In Progress';
    } else {
      return 'Done';
    }
  }
}

@freezed
class Due with _$Due {
  const factory Due({
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "is_recurring") required bool isRecurring,
    @JsonKey(name: "string") required String string,
    @JsonKey(name: "lang") required String lang,
  }) = _Due;

  factory Due.fromJson(Map<String, Object?> json) => _$DueFromJson(json);
}

@freezed
class TaskDuration with _$TaskDuration {
  const factory TaskDuration({
    @JsonKey(name: "amount") required int amount,
    @JsonKey(name: "unit") required String unit,
  }) = _TaskDuration;

  factory TaskDuration.fromJson(Map<String, Object?> json) => _$TaskDurationFromJson(json);
}
