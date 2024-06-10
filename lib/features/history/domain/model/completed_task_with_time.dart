import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'completed_task_with_time.freezed.dart';
part 'completed_task_with_time.g.dart';

@freezed
class CompletedTaskWithTime with _$CompletedTaskWithTime {
  factory CompletedTaskWithTime({
    required String taskId,
    required String sectionId,
    required String content,
    required String completedAt,
    required int timeSpent,
  }) = _CompletedTaskWithTime;
  CompletedTaskWithTime._();
  factory CompletedTaskWithTime.fromJson(Map<String, dynamic> json) => _$CompletedTaskWithTimeFromJson(json);
  String get formattedCompletedAt {
    final DateTime parsedDate = DateTime.parse(completedAt);
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(parsedDate);
  }
}
