// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletedTasksImpl _$$CompletedTasksImplFromJson(Map<String, dynamic> json) =>
    _$CompletedTasksImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => CompletedTaskItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompletedTasksImplToJson(
        _$CompletedTasksImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$CompletedTaskItemImpl _$$CompletedTaskItemImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedTaskItemImpl(
      completedAt: json['completed_at'] as String,
      content: json['content'] as String,
      id: json['id'] as String,
      projectId: json['project_id'] as String,
      sectionId: json['section_id'] as String,
      taskId: json['task_id'] as String,
    );

Map<String, dynamic> _$$CompletedTaskItemImplToJson(
        _$CompletedTaskItemImpl instance) =>
    <String, dynamic>{
      'completed_at': instance.completedAt,
      'content': instance.content,
      'id': instance.id,
      'project_id': instance.projectId,
      'section_id': instance.sectionId,
      'task_id': instance.taskId,
    };
