// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      commentCount: (json['comment_count'] as num).toInt(),
      isCompleted: json['is_completed'] as bool,
      sectionId: json['section_id'] as String,
      projectId: json['project_id'] as String,
      content: json['content'] as String,
      description: json['description'] as String,
      due: Due.fromJson(json['due'] as Map<String, dynamic>),
      duration: TaskDuration.fromJson(json['duration'] as Map<String, dynamic>),
      id: json['id'] as String,
      priority: (json['priority'] as num).toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'comment_count': instance.commentCount,
      'is_completed': instance.isCompleted,
      'section_id': instance.sectionId,
      'project_id': instance.projectId,
      'content': instance.content,
      'description': instance.description,
      'due': instance.due,
      'duration': instance.duration,
      'id': instance.id,
      'priority': instance.priority,
      'url': instance.url,
    };

_$DueImpl _$$DueImplFromJson(Map<String, dynamic> json) => _$DueImpl(
      date: DateTime.parse(json['date'] as String),
      isRecurring: json['is_recurring'] as bool,
      string: json['string'] as String,
      lang: json['lang'] as String,
    );

Map<String, dynamic> _$$DueImplToJson(_$DueImpl instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'is_recurring': instance.isRecurring,
      'string': instance.string,
      'lang': instance.lang,
    };

_$TaskDurationImpl _$$TaskDurationImplFromJson(Map<String, dynamic> json) =>
    _$TaskDurationImpl(
      amount: (json['amount'] as num).toInt(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$TaskDurationImplToJson(_$TaskDurationImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'unit': instance.unit,
    };
