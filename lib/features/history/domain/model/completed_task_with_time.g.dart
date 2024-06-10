// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_task_with_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletedTaskWithTimeImpl _$$CompletedTaskWithTimeImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedTaskWithTimeImpl(
      taskId: json['taskId'] as String,
      sectionId: json['sectionId'] as String,
      content: json['content'] as String,
      completedAt: json['completedAt'] as String,
      timeSpent: (json['timeSpent'] as num).toInt(),
    );

Map<String, dynamic> _$$CompletedTaskWithTimeImplToJson(
        _$CompletedTaskWithTimeImpl instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'sectionId': instance.sectionId,
      'content': instance.content,
      'completedAt': instance.completedAt,
      'timeSpent': instance.timeSpent,
    };
